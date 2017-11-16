//
//  ExercisesTableViewCell.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ExercisesTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var musclesLabel1: UILabel!
    @IBOutlet weak var musclesLabel2: UILabel!
    @IBOutlet weak var musclesLabel3: UILabel!
    @IBOutlet weak var difficultyLabel: UILabel!
    
    @IBOutlet weak var backgroundCellImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        
        //background image
        backgroundCellImageView.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0)
        backgroundCellImageView.layer.cornerRadius = 1
        backgroundCellImageView.layer.shadowColor = UIColor.black.cgColor
        backgroundCellImageView.layer.shadowOffset = CGSize(width: 1, height: 1)
        backgroundCellImageView.layer.shadowOpacity = 1.0
        backgroundCellImageView.layer.shadowRadius = 3.0
        backgroundCellImageView.clipsToBounds = false
        
        //difficulty level
        difficultyLabel.backgroundColor = UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0)
//        difficultyLabel.layer.shadowColor = UIColor.white.cgColor
//        difficultyLabel.layer.shadowOffset = CGSize(width: 5, height: 5)
//        difficultyLabel.layer.shadowOpacity = 1.0
//        difficultyLabel.layer.shadowRadius = 3.0
        difficultyLabel.layer.cornerRadius = 2
        difficultyLabel.clipsToBounds = true
        difficultyLabel.isHidden = false
        
        //muscles labels
        musclesLabel1.isHidden = true
        musclesLabel2.isHidden = true
        musclesLabel3.isHidden = true
        musclesLabel1.backgroundColor = .gray
        musclesLabel2.backgroundColor = .gray
        musclesLabel3.backgroundColor = .gray
        musclesLabel1.layer.cornerRadius = 2
        musclesLabel1.clipsToBounds = true
        musclesLabel2.layer.cornerRadius = 2
        musclesLabel2.clipsToBounds = true
        musclesLabel3.layer.cornerRadius = 2
        musclesLabel3.clipsToBounds = true
        
        selectedBackgroundView?.backgroundColor = UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        self.selectionStyle = UITableViewCellSelectionStyle.blue
        
    }

}
