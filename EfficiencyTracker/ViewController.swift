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
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func StartStopAction(_ sender: UIButton) {
        TodayGoal.text = "You clicked StartStopAction"
        DailyGoal.text = "You clicked StartStopAction"
        UnlocksToday.text = "You clicked StartStopAction"
        UnlocksHr.text = "You clicked StartStopAction"
    }
    @IBAction func TimeAction(_ sender: UIButton) {
        TodayGoal.text = "You clicked TimeAction"
        DailyGoal.text = "You clicked TimeAction"
        UnlocksToday.text = "You clicked TimeAction"
        UnlocksHr.text = "You clicked TimeAction"
    }
    @IBAction func PlaceAction(_ sender: UIButton) {
        TodayGoal.text = "You clicked PlaceAction"
        DailyGoal.text = "You clicked PlaceAction"
        UnlocksToday.text = "You clicked PlaceAction"
        UnlocksHr.text = "You clicked PlaceAction"
    }
    @IBAction func HomeAction(_ sender: UIButton) {
        TodayGoal.text = "You clicked HomeAction"
        DailyGoal.text = "You clicked HomeAction"
        UnlocksToday.text = "You clicked HomeAction"
        UnlocksHr.text = "You clicked HomeAction"
    }
}

