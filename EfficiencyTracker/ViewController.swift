//
//  ViewController.swift
//  EfficiencyTracker
//
//  Created by Alec Felt on 2/3/18.
//  Copyright © 2018 devWeekHack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properites
    @IBOutlet weak var TodayGoal: UILabel!
    @IBOutlet weak var DailyGoal: UILabel!
    @IBOutlet weak var UnlocksToday: UILabel!
    @IBOutlet weak var UnlocksHr: UILabel!
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        //Screen lock helper functions
//        let displayStatusChangedCallback: CFNotificationCallback = { _, cfObserver, cfName, _, _ in
//            guard let lockState = cfName?.rawValue as? String else {
//                return
//            }
//
//            let catcher = Unmanaged<MyClassObserving>.fromOpaque(UnsafeRawPointer(OpaquePointer(cfObserver)!)).takeUnretainedValue()
//            catcher.displayStatusChanged(lockState)
//        }
//        func displayStatusChanged(_ lockState: String) {
//            // the "com.apple.springboard.lockcomplete" notification will always come after the "com.apple.springboard.lockstate" notification
//            print("Darwin notification NAME = \(lockState)")
//            if (lockState == "com.apple.springboard.lockcomplete") {
//                print("DEVICE LOCKED")
//            } else {
//                print("LOCK STATUS CHANGED")
//            }
//        }
        let displayStatusChangedCallback: CFNotificationCallback = { _, cfObserver, cfName, _, _ in
            guard let lockState = cfName?.rawValue as String? else {
                return
            }
            
            print("Darwin notification NAME = \(lockState)")
            if(lockState == "com.apple.springboard.lockstate") {
                let config = URLSessionConfiguration.default
                let session = URLSession(configuration: config)
                let url = URL(string: "http://18.144.51.46:8080/api")!
                let task = session.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                        print(error!.localizedDescription)
                    } else {
                        print(String(describing: response!)) // JSON Serialization
                    }
                }
                task.resume()
            }
        }
        
        //Screen lock notifications obervers
        CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),     //center
            Unmanaged.passUnretained(self).toOpaque(),     // observer
            displayStatusChangedCallback,     // callback
            "com.apple.springboard.lockstate" as CFString,     // event name
            nil,     // object
            .deliverImmediately)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func StartStopAction(_ sender: UIButton) {
//        TodayGoal.text = "You clicked StartStopAction"
//        DailyGoal.text = "You clicked StartStopAction"
//        UnlocksToday.text = "You clicked StartStopAction"
//        UnlocksHr.text = "You clicked StartStopAction"
    }
    @IBAction func TimeAction(_ sender: UIButton) {
//        TodayGoal.text = "You clicked TimeAction"
//        DailyGoal.text = "You clicked TimeAction"
//        UnlocksToday.text = "You clicked TimeAction"
//        UnlocksHr.text = "You clicked TimeAction"
    }
    @IBAction func PlaceAction(_ sender: UIButton) {
//        TodayGoal.text = "You clicked PlaceAction"
//        DailyGoal.text = "You clicked PlaceAction"
//        UnlocksToday.text = "You clicked PlaceAction"
//        UnlocksHr.text = "You clicked PlaceAction"
    }
    @IBAction func HomeAction(_ sender: UIButton) {
//        TodayGoal.text = "You clicked HomeAction"
//        DailyGoal.text = "You clicked HomeAction"
//        UnlocksToday.text = "You clicked HomeAction"
//        UnlocksHr.text = "You clicked HomeAction"
    }
    
    //MARK: Background Task Creation,
    //      lock/unlock event handling
    
    
    
}

