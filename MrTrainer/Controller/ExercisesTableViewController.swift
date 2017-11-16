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
    
    var textForExercises = [String]()
    var textForExercise = Dictionary<Int,[String]>()
    
    var presentFavourites = Bool()
    
    @IBAction func favouritesButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            presentFavourites = true
        } else {
            presentFavourites = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        
        //customization navigation bar
        navigationController?.navigationBar.barTintColor = UIColor(red: 0x21/0xFF, green: 0x21/0xFF, blue: 0x21/0xFF, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 4.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //navigationController?.navigationBar.layer.masksToBounds = false
        
        tableView.backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        tableView.decelerationRate = UIScrollViewDecelerationRateFast
        tableView.separatorStyle = .none
        
        readFromFile()
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
        return Exercises.numberOfExercises
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExercisesTableViewCell

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
    
    //not used
    func getDataForExercise(with index: Int) -> (String, String, [String]) {
        let name: String = Exercises.getName(by: index)
        let difficulty: String = Exercises.getDifficulty(by: index)
        let muscles: [String] = Exercises.getMuscles(by: index)
        
        let data = (name, difficulty, muscles)
        
        return data
    }
    
    //add to favourites
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let addToFavourites = UITableViewRowAction(style: .default, title: "Add To Favourites") { (action, indexPath) in
            Exercises.addToFavourites(by: indexPath.row)
        }
        addToFavourites.backgroundColor = UIColor(red: 0xFF/0xFF, green: 0xEB/0xFF, blue: 0x3B/0xFF, alpha: 1.0)
        return [addToFavourites]
    }

    //prepare for segue to ExerciseDetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as! ExerciseDetailViewController
                destinationVC.name = Exercises.getName(by: indexPath.row)
                destinationVC.images = Exercises.getImages(by: 0)
                destinationVC.duration = Exercises.getDuration(by: indexPath.row)
                destinationVC.text = textForExercise[indexPath.row]!
            }
        }
    }
    
    //read text for exercise from file
    private func readFromFile() {
        DispatchQueue.global(qos: .default).async {
            if let path = Bundle.main.path(forResource: "TextForExercises", ofType: "txt") {
                if let text = try? String(contentsOfFile: path) {
                    self.textForExercises = text.components(separatedBy: "\n<>\n")
                    for (index, item) in self.textForExercises.enumerated() {
                        let textForExercise = item.components(separatedBy: "\n\n")
                        self.textForExercise[index] = textForExercise
                    }
                    //print(self.textForExercise)
                }
            }
        }
    }
    
}
