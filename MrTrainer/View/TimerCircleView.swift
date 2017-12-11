//
//  TimerCircleView.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 11.12.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class TimerCircleView: UIView {
    
    private var centerScreen: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private var centerCircle: CGPoint {
        return CGPoint(x: centerScreen.x, y: centerScreen.y + 50)
    }
    
    private var radiusCircle: CGFloat {
        return bounds.width * 0.3
    }
    
    private var endAngle: CGFloat = CGFloat.pi {didSet {setNeedsDisplay()}}

    private func pathForCircle() -> UIBezierPath {
        let path = UIBezierPath(arcCenter: centerCircle, radius: radiusCircle, startAngle: 3 * CGFloat.pi / 2, endAngle: endAngle, clockwise: true)
        path.lineWidth = 8
        return path
    }

    override func draw(_ rect: CGRect) {
        UIColor(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0).set()
        pathForCircle().stroke()
    }
}
