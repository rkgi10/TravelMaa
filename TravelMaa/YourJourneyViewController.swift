//
//  FirstViewController.swift
//  TravelMaa
//
//  Created by Rohit Gurnani on 11/04/15.
//  Copyright (c) 2015 Rohit Gurnani. All rights reserved.
//

import UIKit

class YourJourneyViewController: UITableViewController {
    var Tripname = ""

    
    @IBAction func NextPressedSaveData(sender: UIButton) {
        println("Data Saved")
        var defaults = NSUserDefaults.standardUserDefaults()
        
        
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(LocationFeild.text, forKey: "MyLocationName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
    }
    
    
    @IBOutlet weak var TripNameFeild: UITextField!
    
    @IBOutlet weak var LocationFeild: UITextField!
    
    @IBOutlet weak var StartDateFeild: UITextField!
    
    @IBOutlet weak var EndDateFeild: UITextField!
    @IBOutlet weak var SocialStepperOutlet: UIStepper!
    @IBOutlet weak var DepartureFeild: UITextField!
    @IBOutlet weak var TravelModeFeild: UITextField!
    
    
    
    
    @IBOutlet weak var ArrivalFeild: UITextField!
    @IBOutlet weak var BusinessStepperOutlet: UIStepper!
    @IBOutlet weak var SocialEvents: UILabel!
    @IBOutlet weak var BusinessEvents: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BusinessStepperOutlet.wraps = true
        BusinessStepperOutlet.autorepeat = true
        BusinessStepperOutlet.maximumValue = 10
        
        SocialStepperOutlet.wraps = true
        SocialStepperOutlet.autorepeat = true
        SocialStepperOutlet.maximumValue = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BusinessStepper(sender: UIStepper) {
        BusinessEvents.text = Int(sender.value).description
    }
   
    @IBAction func SocialStepper(sender: UIStepper) {
        SocialEvents.text = Int(sender.value).description
    }
}

