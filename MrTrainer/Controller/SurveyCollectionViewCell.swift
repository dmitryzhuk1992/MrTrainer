//
//  SurveyCollectionViewCell.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 30.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class SurveyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textView: UITextView!
    
    var answersTitles = [String]()
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
