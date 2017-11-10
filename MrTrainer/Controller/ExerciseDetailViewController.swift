//
//  ExerciseDetailViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 28.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ExerciseDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var images = [UIImage]()
    var duration = Double()
    var muscles = [String]()
    var difficulty = String()
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage.animatedImage(with: images, duration: duration)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
