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
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBarButton(_ sender: UIBarButtonItem) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performFetch()
        
        surveyScrollView?.effect = .carousel
        surveyScrollView?.delegate = self
        
        guard let questions = fetchedResultsController.fetchedObjects else { return }
        itemLabel.text = "1 / \(questions.count)"
        questions.forEach { [weak self] (question) in
            self?.createSurveyScrollPage(with: question.text!)
        }

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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        let allPages = fetchedResultsController.fetchedObjects!.count
        itemLabel.text = "\(Int(currentPage) + 1) / \(allPages)"
    }

}
