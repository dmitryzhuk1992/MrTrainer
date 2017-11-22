//
//  ExercisesTableViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit
import CoreData

class ExercisesTableViewController: UITableViewController {
    
    var fetchedResultsController: NSFetchedResultsController<Exercise> =
        CoreDataManager.fetchedResultsController(entityName: "Exercise",
                                                 keyForSort: "identifier",
                                                 predicate: nil) as! NSFetchedResultsController<Exercise>
    var showFavourites = Bool()
    
    var numberOfRows = Int()
    
    @IBAction func favouritesButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            showFavourites = true
            navigationItem.title = "Your Favourites"
            fetchedResultsController = CoreDataManager.fetchedResultsController(entityName: "Exercise",
                                                                                keyForSort: "identifier",
                                                                                predicate: "isFavourite == true") as! NSFetchedResultsController<Exercise>
        } else {
            showFavourites = false
            navigationItem.title = "All Exercises"
            fetchedResultsController = CoreDataManager.fetchedResultsController(entityName: "Exercise",
                                                                                keyForSort: "identifier",
                                                                                predicate: nil) as! NSFetchedResultsController<Exercise>
        }
        performFetch()
        tableView.reloadData()
    }
    
    //executes the fetch request
    private func performFetch() {
        do {
            try fetchedResultsController.performFetch()
        } catch let error as NSError {
            print("Error fetch perform: \(error.localizedDescription)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        
        performFetch()
        
        //customization navigation bar
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 4.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        tableView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        tableView.decelerationRate = UIScrollViewDecelerationRateFast
        tableView.separatorStyle = .none
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = true
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let sections = fetchedResultsController.sections {
            return sections[section].numberOfObjects
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExercisesTableViewCell

        //change color for even cells
        cell.setColorForRowAt(index: indexPath.row)
        
        //get data for exercise
        let exercise = fetchedResultsController.object(at: indexPath)

        cell.nameLabel.text = exercise.title
        cell.difficultyLabel.text = " \(exercise.difficulty ?? "default") "
        cell.musclesLabel.text = exercise.muscles?.joined(separator: ",")
        
        //in global queue
        DispatchQueue.global(qos: .userInteractive).async {
            //thumbnails
            guard let thumbnails = exercise.thumbnails else { return }
            let duration = exercise.duration
            let animatedThumbnail = UIImage.animatedImage(with: thumbnails, duration: duration)
            //in main queue
            DispatchQueue.main.async {
                cell.thumbnailImageView.image = animatedThumbnail
            }
        }
        
        return cell
    }
    
    //add to favourites
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let exercise = fetchedResultsController.object(at: indexPath)
        var favouriteAction = UITableViewRowAction()
    
        if showFavourites == false {
            favouriteAction = UITableViewRowAction(style: .default, title: "Add To Favourites") { (action, indexPath) in
                exercise.isFavourite = true
                //CoreDataManager.saveContext()
                do {
                    try self.fetchedResultsController.managedObjectContext.save()
                } catch let error as NSError {
                    print("Can't saved context: \(error.localizedDescription)")
                }
            }
            favouriteAction.backgroundColor = UIColor(red: 0xFF/0xFF, green: 0xC1/0xFF, blue: 0x07/0xFF, alpha: 1.0)
        } else {
            favouriteAction = UITableViewRowAction(style: .default, title: "Remove From Favourites") { (action, indexPath) in
                exercise.isFavourite = false
                //CoreDataManager.saveContext()
                do {
                    try self.fetchedResultsController.managedObjectContext.save()
                } catch let error as NSError {
                    print("Can't saved context: \(error.localizedDescription)")
                }
                self.performFetch()
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }

        return [favouriteAction]
    }
    
    override func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExercisesTableViewCell
        cell?.backView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
    }
    
    override func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExercisesTableViewCell
        //change color for even cells
        cell?.setColorForRowAt(index: indexPath.row)
    }
    
    // MARK: - Prepare For Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueToExercise" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                if let dvc = segue.destination as? ExerciseDetailViewController {
                    let exercise = fetchedResultsController.object(at: indexPath)
                    dvc.exercise = exercise
                }
            }
        }
    }

    
}
