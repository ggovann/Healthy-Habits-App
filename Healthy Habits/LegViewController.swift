////
////  ViewController.swift
////  Timers
////
////  Created by Apple on 6/26/19.
////  Copyright © 2019 Apple. All rights reserved.
////
import UIKit
class LegViewController: UIViewController {
//
//
//    @IBOutlet weak var switchOutlet: UISwitch!
//
//    @IBOutlet weak var resumeButton: UIButton!
//
//    @IBOutlet weak var startButtonOutlet: UIButton!
//
//    @IBOutlet weak var Label: UILabel!
//    var resumeTapped = false
//    var seconds = 10 //This variable will hold a starting value of seconds. It could be any amount above 0.
//    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
//    var timer = Timer()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        resumeButton.isEnabled = false
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func startButton(_ sender: UIButton) {
//        if isTimerRunning == false {
//            runTimer()
//            self.startButtonOutlet.isEnabled = false
//        }
//    }
//
//
//
//
//    func runTimer() {
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(LegsViewController.updateTimer)), userInfo: nil, repeats: true)
//
//        isTimerRunning = true
//        resumeButton.isEnabled = true
//
//    }
//
//    func alertMessage0() {
//        let alert = UIAlertController(title: "Time's up!", message: "Good job completing your workout!", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//
//        self.present(alert, animated: true)
//    }
//
//    @objc func updateTimer() {
//        if seconds < 1 {
//            timer.invalidate()
//            alertMessage0()
//        } else {
//            seconds -= 1     //This will decrement(count down)the seconds.
//            Label.text = timeString(time: TimeInterval(seconds))
//            //This will update the label.
//
//        }
//    }
//    @IBAction func pauseButton(_ sender: UIButton) {
//        if self.resumeTapped == false {
//            timer.invalidate()
//            self.resumeTapped = true
//            self.resumeButton.setTitle("Resume",for: .normal)
//        } else {
//            runTimer()
//            self.resumeTapped = false
//            self.resumeButton.setTitle("Pause",for: .normal)
//        }
//    }
//
//
//
//
//
//
//    @IBAction func resetButton(_ sender: Any) {
//        timer.invalidate()
//        seconds = 10    //Here we manually enter the restarting point for the seconds, but it would be wiser to make this a variable or constant.
//        Label.text = timeString(time: TimeInterval(seconds))
//
//        isTimerRunning = false
//        resumeButton.isEnabled = false
//        startButtonOutlet.isEnabled = true
//
//    }
//
//
//    func timeString(time:TimeInterval) -> String {
//        let hours = Int(time) / 3600
//        let minutes = Int(time) / 60 % 60
//        let seconds = Int(time) % 60
//        return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
//    }
//
//    func alertMessage() {
//        let alert = UIAlertController(title: "Good job!", message: "You finished your daily leg workouts!💪", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        self.present(alert, animated: true)
//    }
//    var isSwitchOn: Bool = false
//    //    var alertCancel: Bool = false
//    //    func resetSwitch()
//    //    {
//    //        isSwitchOn.toggle()
//    //    if (isSwitchOn)
//    //    {
//    //        alertCancel = false
//    //    }
//    //}
//
//
//
//    @IBAction func SwitchFlicked(_ sender: UISwitch)
//    {
//        isSwitchOn.toggle()
//        if isSwitchOn
//        {
//            alertMessage()
//        }
//    }
//
//
//
//
//
//
//
//
//
//
//
//    // Do any additional setup after loading the view.
//
//
//
//
}
//
