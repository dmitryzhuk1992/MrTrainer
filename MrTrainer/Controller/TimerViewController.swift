//
//  TimerViewController.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 03.12.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var workTimeLabel: UILabel!
    @IBOutlet weak var restTimeLabel: UILabel!
    @IBOutlet weak var repeatCountLabel: UILabel!
    @IBOutlet weak var remainingTimeLabel: UILabel!
    @IBOutlet weak var startButtonOutlet: UIButton!
    
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let workTimes = ["OFF","30 sec", "1 min", "2 min", "3 min", "4 min", "5 min", "6 min", "7 min", "8 min", "9 min", "10 min", "15 min", "20 min", "25 min", "30 min", "1 hour"]
    
    var timer = Timer()
    
    var repeatCount: Int {
        get {
            guard let string = (repeatCountLabel.text?.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) else { return 0 }
            guard let repeats = Int(string) else { return 0 }
            return repeats
        }
        set {
            repeatCountLabel.text = "x\(newValue)"
        }
    }
    
    var workTime: Int { get { return getTime(from: workTimeLabel) }
                        set { setTime(with: newValue, to: workTimeLabel) }}
    
    var restTime: Int { get { return getTime(from: restTimeLabel) }
                        set {setTime(with: newValue, to: restTimeLabel) }}
    
    var remainingTime: Int { get { return getTime(from: remainingTimeLabel) }
                             set { setTime(with: newValue, to: remainingTimeLabel) }}
    
    var overallTime = Int()
    var state = Int()
    var repeats = Int()
    
    //getter for timeLabels
    private func getTime(from timeLabel: UILabel) -> Int {
        guard var time = timeLabel.text?.components(separatedBy: ":") else { return 0 }
        guard let min = Int(time.removeFirst()) else { return 0 }
        guard let sec = Int(time.last!) else { return 0 }
        return min * 60 + sec
    }
    
    //setter for timeLabels
    private func setTime(with newValue: Int, to timeLabel: UILabel) {
        let min = Int(newValue / 60)
        let sec = newValue - min * 60
        
        switch (min, sec) {
        case (0...9, 0...9):
            timeLabel.text = "0\(min):0\(sec)"
        case (_ , 0...9):
            timeLabel.text = "\(min):0\(sec)"
        case (0...9, _):
            timeLabel.text = "0\(min):\(sec)"
        default:
            timeLabel.text = "\(min):\(sec)"
        }
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setTitle("Stop", for: .selected)
        if sender.isSelected {
            if state == 0 {
                //state = 0
                changeNextTimeInterval()
            }
            startTimer()
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        timer.invalidate()
        overallTime = calculationOverallTime(work: workTime, rest: restTime, repeats: repeatCount)
        state = 0
        repeats = repeatCount
        changeNextTimeInterval()
    }
    
    //start timer
    private func startTimer() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(handler), userInfo: nil, repeats: true)
        }
    }
    
    //overall time
    private func calculationOverallTime(work: Int, rest: Int, repeats: Int) -> Int {
        return (work + rest) * repeats
    }
    
    //change the next time interval for timer
    private func changeNextTimeInterval() {
        //state
        //0 - timer was off
        //1 - work time completed
        //2 - rest time completed
        if repeats > 0 {
            switch self.state {
            case 0:
                remainingTime = workTime
                self.state = 2
            case 1:
                remainingTime = workTime
                startTimer()
                self.state = 2
            case 2:
                remainingTime = restTime
                startTimer()
                self.state = 1
                if repeats > 0 && repeats < 11 {
                    repeats -= 1
                } else {
                    repeats = 0
                }
            default:
                remainingTime = 0
                self.state = 0
                startButtonOutlet.isSelected = false
            }
        } else {
            self.state = 0
            repeats = repeatCount
            changeNextTimeInterval()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        workTime = 5
        restTime = 3
        repeatCount = 1
        
        overallTime = calculationOverallTime(work: workTime, rest: restTime, repeats: repeatCount)
        changeNextTimeInterval()
    }
    
    //handler func for timer
    @objc private func handler() {
        guard remainingTime > 0 else {
            timer.invalidate()
            changeNextTimeInterval()
            return
        }
        remainingTime -= 1
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return workTimes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return workTimes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        workTimeLabel.text = workTimes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: workTimes[row], attributes: [NSAttributedStringKey.foregroundColor : UIColor.init(red: 0x03/0xFF, green: 0xA9/0xFF, blue: 0xF4/0xFF, alpha: 1.0) ])
    }

}
