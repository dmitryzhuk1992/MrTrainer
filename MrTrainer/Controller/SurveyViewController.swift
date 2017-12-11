//
//  ViewController.swift
//  CardsExample
//
//  Created by Filipp Fediakov on 03.11.17.
//  Copyright © 2017 filletofish. All rights reserved.
//

import UIKit
import CoreData
import JT3DScrollView

class SurveyViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var surveyScrollView: JT3DScrollView?
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    @IBOutlet weak var answerButtonsStack: UIStackView!
    @IBOutlet weak var createProgramOutlet: UIButton!

    var questions: [Question]?
    var currentPage = Int()
    var allPages = Int()
    var arrayOfButtons = [UIButton]()
    
    var fetchedResultsController: NSFetchedResultsController<Question> =
        CoreDataManager.fetchedResultsController(entityName: "Question",
                                                 keyForSort: "id",
                                                 predicate: nil) as! NSFetchedResultsController<Question>
    
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
        surveyScrollView?.removeFromSuperview()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func answer1Action(_ sender: UIButton) {
        answerAction(sender)
    }
    @IBAction func answer2Action(_ sender: UIButton) {
        answerAction(sender)
    }
    @IBAction func answer3Action(_ sender: UIButton) {
        answerAction(sender)
    }
    @IBAction func answer4Action(_ sender: UIButton) {
        answerAction(sender)
    }
    
    private func answerAction(_ sender: UIButton) {
        sender.isHighlighted = true
        saveUserAnswer(sender)
        showNextPage()
    }
    
    @IBAction func createProgramAction(_ sender: UIButton) {
        print("CREATE")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        performFetch()
        
        arrayOfButtons = [answer1Button, answer2Button, answer3Button, answer4Button]
        arrayOfButtons.forEach { (button) in
            button.setTitleColor( .black, for: .highlighted)
            button.setBackgroundColor(color: UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0), forState: .highlighted)
        }
        setUpButtons(with: ["Мужчина","Женщина"])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        surveyScrollView?.effect = .carousel
        surveyScrollView?.delegate = self
        
        guard let questions = fetchedResultsController.fetchedObjects else { return }
        itemLabel.text = "1 / \(questions.count)"
        questions.forEach { [weak self] (question) in
            self?.createSurveyScrollPage(with: question.text!)
        }
        
        self.questions = questions
        self.allPages = questions.count
    }
    
    //creating page with textView for surveyScrollView
    private func createSurveyScrollPage(with text: String) {
        guard let scrollView = surveyScrollView else {
            return
        }
        
        let width = scrollView.frame.width
        let height = scrollView.frame.height
        let x = CGFloat(scrollView.subviews.count) * width / 2
        
        let view = UIView(frame: CGRect(x: x, y: 0, width: width, height: height))
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.layer.shadowRadius = 4
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.8
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        scrollView.addSubview(view)
        scrollView.contentSize = CGSize(width: x + width, height: height)
        
        let textLabel = UILabel(frame: CGRect(x: x, y: height * 0.05, width: width, height: height * 0.2))
        textLabel.backgroundColor = .clear
        textLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 24)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 0
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.text = text
        scrollView.addSubview(textLabel)
    }
    
    //hidden answers buttons
    private func setUpButtons(with titles: [String]) {
        let countTitles = titles.count
        let countButtons = arrayOfButtons.count
        for i in 0..<countTitles {
            arrayOfButtons[i].isHidden = false
            arrayOfButtons[i].setTitle(titles[i], for: .normal)
        }
        for i in countTitles..<countButtons {
            arrayOfButtons[i].isHidden = true
        }
        if countTitles <= 1 {
            arrayOfButtons[0].isUserInteractionEnabled = false
        }
    }
    
    private func showNextPage() {
        if currentPage < allPages - 1 {
            guard let svc = surveyScrollView else { return }
            let visibleRect = CGRect(x: svc.bounds.origin.x + svc.frame.width, y: 0, width: svc.frame.width, height: svc.frame.height)
            svc.scrollRectToVisible(visibleRect, animated: true)
            
            currentPage = Int(round(visibleRect.origin.x / svc.frame.size.width))
            itemLabel.text = "\((currentPage) + 1) / \(allPages)"
            
            guard let possibleAnswers = questions?[currentPage].possibleAnswers?.array[0] as! PossibleAnswers? else { return }
            guard let answers = possibleAnswers.answers else { return }
            setUpButtons(with: answers)
            
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveLinear, animations: {
                self.answerButtonsStack.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveLinear, animations: {
                self.answerButtonsStack.alpha = 1
            }, completion: nil)
        } else {
            setUpButtons(with: ["Почти готово..."])
        }
    }
    
    //executes the fetch request
    private func performFetch() {
        do {
            try fetchedResultsController.performFetch()
        } catch {
            print("Error perform fetch: \(error.localizedDescription)")
        }
    }
    
    //CoreDataManager.saveContext()
    private func saveContext() {
        do {
            try self.fetchedResultsController.managedObjectContext.save()
        } catch let error as NSError {
            print("Can't saved context: \(error.localizedDescription)")
        }
    }
    
    private func saveUserAnswer(_ sender: UIButton) {
        if let userAnswer = questions?[currentPage].userAnswer {
            userAnswer.answer = sender.currentTitle
            saveContext()
        } else {
            print("ERROR SAVE ANSWER")
        }
        if currentPage == questions!.count - 1 {
            UIView.animate(withDuration: 1.6, delay: 0.1, options: .curveLinear, animations: {
                self.createProgramOutlet.alpha = 1
            }, completion: {(complete) in
                self.createProgramOutlet.isEnabled = true
            })
        }
    }
}

extension UIButton {
    func setBackgroundColor(color: UIColor, forState: UIControlState) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()?.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.setBackgroundImage(colorImage, for: forState)
    }
}
