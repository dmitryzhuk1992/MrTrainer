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

        guard let exercise = exercise else { return }
        title = exercise.title
        imageView.image = UIImage.animatedImage(with: exercise.images!, duration: exercise.duration)
        text = exercise.text!
        
        musclesTextView.text = ""
        exercise.muscles?.forEach({ [weak self] (muscle) in
            let existingText = self?.musclesTextView.text
            self?.musclesTextView.text = "\(existingText ?? "")\(muscle)\n"
        })
        
        difficultyTextView.text = exercise.difficulty
        
        pageControl.numberOfPages = text.count
        pageControl.currentPage = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView?.effect = .depth
        scrollView?.delegate = self
        text.forEach { [weak self] (text) in
            self?.createScrollPage(with: text)
        }
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
        
        let textLabel = UILabel(frame: CGRect(x: x, y: height * 0.05, width: width, height: height * 0.9))
        textLabel.backgroundColor = .clear
        textLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 0
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.text = text
        scrollView.addSubview(textLabel)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(currentPage)
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            scrollView?.removeFromSuperview()
        }
    }
}
