//
//  PersonalTrainerViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 23.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class PersonalTrainerViewController: UIViewController {
    
    // MARK: - view lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //customization navigation bar
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 4.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

}
