//
//  ViewController.swift
//  CardsExample
//
//  Created by Filipp Fediakov on 03.11.17.
//  Copyright © 2017 filletofish. All rights reserved.
//

import UIKit
import CoreData

class SurveyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
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
        
        collectionView.collectionViewLayout = CardsCollectionViewLayout()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    var colors: [UIColor]  = [UIColor(red: 0xFF/0xFF, green: 0xFF/0xFF, blue: 0xFF/0xFF, alpha: 1.0),
                              UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0)]
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellReuseIdentifier", for: indexPath) as! SurveyCollectionViewCell
        cell.layer.cornerRadius = 7.0
        cell.backgroundColor = (indexPath.row % 2 == 0) ? colors[0] : colors[1]
        
        let fetchedObject = fetchedResultsController.object(at: indexPath)
        cell.textView.text = fetchedObject.text
        //cell.answersTitles = fetchedObject.possibleAnswers as! [String]

        
        let number = 4
        let width = cell.frame.width * 0.6
        let height = cell.frame.height * 0.05
        let x = cell.frame.width * 0.1
        
        for i in 0...number - 1 {
            let y = cell.frame.height * 0.4 + (height * 1.5 * CGFloat(i))
            let answerButton = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
            answerButton.backgroundColor = .gray
            answerButton.setTitle("Answer", for: UIControlState.normal)
            //answerButton.isUserInteractionEnabled = true
            cell.addSubview(answerButton)
        }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = fetchedResultsController.fetchedObjects?.count {
            return count
        } else {
            return 0
        }
    }
}
