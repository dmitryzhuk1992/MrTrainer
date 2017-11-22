//
//  ExerciseDetailViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 28.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class ExerciseDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var exercise: Exercise?
    
    var images = [UIImage]()
    var duration = Double()
    var muscles = [String]()
    var difficulty = String()
    var text = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let exercise = exercise else { return }
        title = exercise.title
        imageView.image = UIImage.animatedImage(with: exercise.images!, duration: exercise.duration)
        text = exercise.text!
        textView.text = text[0]
        
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        //на разных девайсах по-разному работает скрол
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(text.count), height: scrollView.frame.height)
        scrollView.delegate = self
        
        pageControl.numberOfPages = text.count
        pageControl.currentPage = 0

        view.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.hidesBarsOnSwipe = false
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //Test the offset and calculate the current page after scrolling ends
        let pageWidth: CGFloat = scrollView.frame.width
        let currentPage: CGFloat = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1

        //Change the indicator
        self.pageControl.currentPage = Int(currentPage)
        
        //Change the text accordingly
        switch Int(currentPage) {
        case 0:
            textView.text = text[0]
        case 1 where text.count > 1:
            textView.text = text[1]
        case 2 where text.count > 2:
            textView.text = text[2]
        case 3 where text.count > 3:
            textView.text = text[3]
        case 4 where text.count > 4:
            textView.text = text[4]
        default:
            break
        }
    }

}
