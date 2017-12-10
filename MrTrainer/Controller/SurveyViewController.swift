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
    
    var fetchedResultsController: NSFetchedResultsController<Question> =
        CoreDataManager.fetchedResultsController(entityName: "Question",
                                                 keyForSort: "id",
                                                 predicate: nil) as! NSFetchedResultsController<Question>
    
    //executes the fetch request
    private func performFetch() {
        do {
            try fetchedResultsController.performFetch()
        } catch {
            print("Error perform fetch: \(error.localizedDescription)")
        }
    }
    
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
        surveyScrollView?.removeFromSuperview()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func answer1Action(_ sender: UIButton) {
        sender.isSelected = true
        answer2Button.isSelected = false
        answer3Button.isSelected = false
        answer4Button.isSelected = false
        saveUserAnswer(sender)
        showNextPage()
    }
    @IBAction func answer2Action(_ sender: UIButton) {
        sender.isSelected = true
        answer1Button.isSelected = false
        answer3Button.isSelected = false
        answer4Button.isSelected = false
        saveUserAnswer(sender)
        showNextPage()
    }
    @IBAction func answer3Action(_ sender: UIButton) {
        sender.isSelected = true
        answer1Button.isSelected = false
        answer2Button.isSelected = false
        answer4Button.isSelected = false
        saveUserAnswer(sender)
        showNextPage()
    }
    @IBAction func answer4Action(_ sender: UIButton) {
        sender.isSelected = true
        answer1Button.isSelected = false
        answer2Button.isSelected = false
        answer3Button.isSelected = false
        saveUserAnswer(sender)
        showNextPage()
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
            }, completion: {(_) in
                self.answer1Button.isSelected = false
                self.answer2Button.isSelected = false
                self.answer3Button.isSelected = false
                self.answer4Button.isSelected = false
            })
            UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveLinear, animations: {
                self.answerButtonsStack.alpha = 1
            }, completion: nil)
        }
    }
    
    @IBAction func createProgramAction(_ sender: UIButton) {
        print("CREATE")
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
    
    //CoreDataManager.saveContext()
    private func saveContext() {
        do {
            try self.fetchedResultsController.managedObjectContext.save()
        } catch let error as NSError {
            print("Can't saved context: \(error.localizedDescription)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performFetch()
        
        surveyScrollView?.effect = .carousel
        surveyScrollView?.delegate = self
        
        setUpButtons(with: [])
        
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
        
        let textView = UITextView(frame: CGRect(x: x, y: height * 0.05, width: width, height: height * 0.9))
        textView.isEditable = false
        textView.isSelectable = false
        textView.backgroundColor = .clear
        textView.font = UIFont(name: "Apple SD Gothic Neo", size: 24)
        textView.textAlignment = .center
        textView.alignmentRect(forFrame: CGRect(x: x * 1.2, y: height * 0.2, width: width * 0.6, height: height * 0.6))
        textView.text = text
        scrollView.addSubview(textView)
    }

    //hidden answers buttons
    private func setUpButtons(with titles: [String]) {
        switch titles.count {
        case 4:
            answer1Button.isHidden = false
            answer2Button.isHidden = false
            answer3Button.isHidden = false
            answer4Button.isHidden = false
            answer1Button.setTitle(titles[0], for: .normal)
            answer2Button.setTitle(titles[1], for: .normal)
            answer3Button.setTitle(titles[2], for: .normal)
            answer4Button.setTitle(titles[3], for: .normal)
        case 3:
            answer1Button.isHidden = true
            answer2Button.isHidden = false
            answer3Button.isHidden = false
            answer4Button.isHidden = false
            answer2Button.setTitle(titles[0], for: .normal)
            answer3Button.setTitle(titles[1], for: .normal)
            answer4Button.setTitle(titles[2], for: .normal)
        case 2:
            answer1Button.isHidden = true
            answer2Button.isHidden = false
            answer3Button.isHidden = false
            answer4Button.isHidden = true
            answer2Button.setTitle(titles[0], for: .normal)
            answer3Button.setTitle(titles[1], for: .normal)
        default:
            answer1Button.isHidden = true
            answer2Button.isHidden = false
            answer3Button.isHidden = false
            answer4Button.isHidden = true
            answer2Button.setTitle("Мужчина", for: .normal)
            answer3Button.setTitle("Женщина", for: .normal)
        }
    }

}
