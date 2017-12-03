//
//  ExerciseDetailViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 28.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit
import JT3DScrollView

class ExerciseDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var musclesTextView: UITextView!
    @IBOutlet weak var difficultyTextView: UITextView!
    @IBOutlet weak var scrollView: JT3DScrollView?
    @IBOutlet weak var pageControl: UIPageControl!
    
    var exercise: Exercise?
    
    var images = [UIImage]()
    var duration = Double()
    var muscles = [String]()
    var difficulty = String()
    var text = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.hidesBarsOnSwipe = false
        
        scrollView?.effect = .depth
        scrollView?.delegate = self

        guard let exercise = exercise else { return }
        title = exercise.title
        imageView.image = UIImage.animatedImage(with: exercise.images!, duration: exercise.duration)
        text = exercise.text!
        
        text.forEach { [weak self] (text) in
            self?.createScrollPage(with: text)
        }
        
        musclesTextView.text = ""
        exercise.muscles?.forEach({ [weak self] (muscle) in
            let existingText = self?.musclesTextView.text
            self?.musclesTextView.text = "\(existingText ?? "")\(muscle)\n"
        })
        
        difficultyTextView.text = exercise.difficulty
        
        pageControl.numberOfPages = text.count
        pageControl.currentPage = 0
    }
    
    //creating page with textView for scrollView
    private func createScrollPage(with text: String) {
        guard let scrollView = scrollView else {
            return
        }
        
        let width = scrollView.frame.width
        let height = scrollView.frame.height
        let x = CGFloat(scrollView.subviews.count) * width / 2
        
        let view = UIView(frame: CGRect(x: x, y: 0, width: width, height: height))
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.layer.shadowRadius = 4
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.8
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        scrollView.addSubview(view)
        scrollView.contentSize = CGSize(width: x + width, height: height)
        
        let textView = UITextView(frame: CGRect(x: x, y: height * 0.05, width: width, height: height * 0.9))
        textView.isEditable = false
        textView.isSelectable = false
        textView.backgroundColor = .clear
        textView.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        textView.textAlignment = .center
        textView.alignmentRect(forFrame: CGRect(x: x * 1.2, y: height * 0.2, width: width * 0.6, height: height * 0.6))
        textView.text = text
        scrollView.addSubview(textView)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(currentPage)
    }


}
