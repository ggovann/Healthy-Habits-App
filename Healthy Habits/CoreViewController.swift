//
//  ViewController.swift
//  Timers
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//
import UIKit
class CoreViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    var resumeTapped = false
    var seconds = 10 //This variable will hold a starting value of seconds. It could be any amount above 0.
    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
    var timer = Timer()
    
    @IBAction func startButton(_ sender: UIButton) {
        if isTimerRunning == false {
            runTimer()
            self.startButtonOutlet.isEnabled = false
        }
    }
    
    @IBOutlet weak var startButtonOutlet: UIButton!
    
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(CoreViewController.updateTimer)), userInfo: nil, repeats: true)
        
        isTimerRunning = true
        resumeButton.isEnabled = true
        
    }
    
    func alertMessage() {
        let alert = UIAlertController(title: "Time's up!", message: "Good job completing your workout!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    @objc func updateTimer() {
        if seconds < 1 {
            timer.invalidate()
            alertMessage()
        } else {
            seconds -= 1     //This will decrement(count down)the seconds.
            Label.text = timeString(time: TimeInterval(seconds))
            //This will update the label.
        }
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
            self.resumeButton.setTitle("Resume",for: .normal)
        } else {
            runTimer()
            self.resumeTapped = false
            self.resumeButton.setTitle("Pause",for: .normal)
        }
    }
    
    
    @IBOutlet weak var resumeButton: UIButton!
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        seconds = 10    //Here we manually enter the restarting point for the seconds, but it would be wiser to make this a variable or constant.
        Label.text = timeString(time: TimeInterval(seconds))
        
        isTimerRunning = false
        resumeButton.isEnabled = false
        startButtonOutlet.isEnabled = true
        
    }
    
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resumeButton.isEnabled = false
        
        // Do any additional setup after loading the view.
    }
}
