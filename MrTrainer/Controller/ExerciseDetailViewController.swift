//
//  ExerciseDetailViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 28.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit
import TGLParallaxCarousel

class ExerciseDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var carouselView: TGLParallaxCarousel!
    
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

        view.backgroundColor = UIColor(red: 0x42/0xFF, green: 0x42/0xFF, blue: 0x42/0xFF, alpha: 1.0)
        
        setupCarousel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.hidesBarsOnSwipe = false
    }
    
    // MARK: - methods
    func setupCarousel() {
        carouselView.delegate = self
        carouselView.margin = 0
        carouselView.selectedIndex = 0
        carouselView.type = .threeDimensional
    }
}

extension ExerciseDetailViewController: TGLParallaxCarouselDelegate {
    
    func numberOfItemsInCarouselView(_ carouselView: TGLParallaxCarousel) -> Int {
        return text.count
    }
    
    func carouselView(_ carouselView: TGLParallaxCarousel, itemForRowAtIndex index: Int) -> TGLParallaxCarouselItem {
        return CustomView(frame: CGRect(x: 0, y: 0, width: 300, height: 150), text: text[index])
    }
    
    func carouselView(_ carouselView: TGLParallaxCarousel, didSelectItemAtIndex index: Int) {
        //print("Tap on item at index \(index)")
    }
    
    func carouselView(_ carouselView: TGLParallaxCarousel, willDisplayItem item: TGLParallaxCarouselItem, forIndex index: Int) {
    }
}
