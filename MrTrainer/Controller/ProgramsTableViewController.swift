//
//  ProgramsTableViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 20.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit
import CoreData

class ProgramsTableViewController: UITableViewController {
    
    var fetchedResultsController: NSFetchedResultsController<Program> =
        CoreDataManager.fetchedResultsController(entityName: "Program",
                                                 keyForSort: "identifier",
                                                 predicate: nil) as! NSFetchedResultsController<Program>

    //executes the fetch request
    private func performFetch() {
        do {
            try fetchedResultsController.performFetch()
        } catch {
            print("Error perform fetch: \(error.localizedDescription)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgramCell", for: indexPath) as! ProgramsTableViewCell

        let program = fetchedResultsController.object(at: indexPath)
        
        cell.titleLabel.text = program.title
        cell.backImageView.image = program.image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ProgramsTableViewCell
        cell?.titleLabel.textColor = UIColor.lightGray
    }
    
    override func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ProgramsTableViewCell
        cell?.titleLabel.textColor = UIColor.white
    }

    // MARK: - Prepare For Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueToProgram" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                if let dvc = segue.destination as? ProgramDetailTableViewController {
                    let program = fetchedResultsController.object(at: indexPath)
                    dvc.program = program
                }
            }
        }
    }

}
