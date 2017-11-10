//
//  ExercisesTableViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ExercisesTableViewController: UITableViewController {
    
    var exercises = Exercises()
    var namesOfExercises = [String]()
    var namesOfThumbnails = [[String]]()
  
    var thumbnails = [UIImage]()
    var duration = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0x21/0xFF, green: 0x21/0xFF, blue: 0x21/0xFF, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowRadius = 4.0
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        //self.navigationController?.navigationBar.layer.masksToBounds = false
        
        self.tableView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        self.tableView.separatorStyle = .none
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Exercises.numberOfExercises
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExercisesTableViewCell
        //cell.prepareForReuse()
        //cell.thumbnailImageView.image = nil
        
        //name label
        cell.nameLabel.text = Exercises.getName(by: indexPath.row)
        
        //in global queue
        DispatchQueue.global(qos: .userInteractive).async {
            //thumbnails
            self.thumbnails = Exercises.getThumbnails(by: indexPath.row)
            self.duration = Exercises.getDuration(by: indexPath.row)
            let animatedThumbnail = UIImage.animatedImage(with: self.thumbnails, duration: self.duration)
            //in main queue
            DispatchQueue.main.async {
                cell.thumbnailImageView.image = animatedThumbnail
            }
        }
        
        //difficulty label
        let difficulty = Exercises.getDifficulty(by: indexPath.row)
        cell.difficultyLabel.text = difficulty
        
        //muscles labels
        let musclesLabelArray = [cell.musclesLabel1, cell.musclesLabel2, cell.musclesLabel3]
        let muscles = Exercises.getMuscles(by: indexPath.row)
        for i in 0..<muscles.count {
            musclesLabelArray[i]!.text = muscles[i]
            musclesLabelArray[i]!.isHidden = false
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
    }

    //подготовка перехода на ExerciseDetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as! ExerciseDetailViewController
                destinationVC.images = Exercises.getImages(by: 0)
                destinationVC.duration = Exercises.getDuration(by: indexPath.row)
            }
        }
    }
}
