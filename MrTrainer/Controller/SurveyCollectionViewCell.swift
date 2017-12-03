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
        let number = 4
        
        let width = frame.width * 0.6
        let height = frame.height * 0.05
        let x = frame.width * 0.1
        
        for i in 0...number - 1 {
            print(frame.height)
            let y = frame.height * 0.4 + (height * 1.5 * CGFloat(i))
            let answerButton1 = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
            answerButton1.backgroundColor = .gray
            answerButton1.isUserInteractionEnabled = true
            addSubview(answerButton1)
        }
        
        
    }
    
}
