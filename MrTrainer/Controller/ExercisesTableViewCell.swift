//
//  ExercisesTableViewCell.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ExercisesTableViewCell: UITableViewCell {
    
    var backView = UIView()

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var musclesLabel1: UILabel!
    @IBOutlet weak var musclesLabel2: UILabel!
    @IBOutlet weak var musclesLabel3: UILabel!
    @IBOutlet weak var difficultyLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
        backView.backgroundColor = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = UIColor(red: 0x30/0xFF, green: 0x30/0xFF, blue: 0x30/0xFF, alpha: 1.0)
        
        //background view
        backView = UIView(frame: CGRect(x: 10, y: 6, width: UIScreen.main.bounds.size.width - 20, height: 88))
        backView.layer.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0).cgColor
        backView.layer.masksToBounds = false
        backView.layer.cornerRadius = 3.0

        contentView.backgroundColor = UIColor.clear
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        contentView.layer.shadowOpacity = 0.8
        contentView.layer.shadowRadius = 3.0

        contentView.addSubview(backView)
        contentView.sendSubview(toBack: backView)
        
        
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
        
        //selectedBackgroundView?.backgroundColor = UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0)
        
    }
    
    //change color for even cells
    func setColorForRowAt(index: Int) {
        if index % 2 == 0 {
            backView.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0)
        } else {
            backView.backgroundColor = UIColor(red: 0x38/0xFF, green: 0x38/0xFF, blue: 0x38/0xFF, alpha: 1.0)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }

}
