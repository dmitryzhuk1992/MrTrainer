//
//  ProgramDetailTableViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 22.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ProgramDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    
    var program: Program!
    var exercises = [Exercise]()
    
    var mainMuscles = Set<String>()
    var exercisesForMuscles = [[Exercise]]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        
        headerImage.image = program.image
        
        //get data for exercises
        if let exercises = program.exercises?.allObjects {
            self.exercises = exercises as! [Exercise]
        }
        
        //get group muscles
        exercises.forEach { (exercise) in
            if let mainMuscle = exercise.muscles?.first {
                mainMuscles.insert(mainMuscle)
            }
        }
        
        var i = 0
        mainMuscles.forEach { (muscle) in
            var subArrayForMuscle = [Exercise]()
            for exercise in exercises {
                if muscle == exercise.muscles?.first {
                    subArrayForMuscle.append(exercise)
                }
            }
            exercisesForMuscles.append(subArrayForMuscle)
            i += 1
        }

        //customization navigation bar
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 4.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.title = program.title
        
        tableView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        tableView.decelerationRate = UIScrollViewDecelerationRateFast
        tableView.separatorStyle = .none
        
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return mainMuscles.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let arrayOfMainMuscles = Array(mainMuscles)
        return arrayOfMainMuscles[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exercisesForMuscles[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExercisesTableViewCell
        
        //change color for even cells
        cell.setColorForRowAt(index: indexPath.row)
        
        //get data for program
        let exercise = exercisesForMuscles[indexPath.section][indexPath.row]
        
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

    override func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExercisesTableViewCell
        cell?.backView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
    }
    
    override func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExercisesTableViewCell
        //change color for even cells
        cell?.setColorForRowAt(index: indexPath.row)
    }
    
    //header
//    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        let header = view as! UITableViewHeaderFooterView
//        header.contentView.addSubview(headerImage)
//    }
    
    // MARK: - Prepare For Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueProgramToExercise" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                if let dvc = segue.destination as? ExerciseDetailViewController {
                    
                    //need rewrite
                    dvc.exercise = exercisesForMuscles[indexPath.section][indexPath.row]
                }
            }
        }
    }
    

}
