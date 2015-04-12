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

    
    @IBOutlet weak var dateLabelstart: UIDatePicker!
    
    
    @IBOutlet var datePickerend: UIDatePicker!
    
    
    
    @IBAction func NextPressedSaveData(sender: UIButton) {
        println("Data Saved")
        var defaults = NSUserDefaults.standardUserDefaults()
        
        
        defaults.setObject(TripNameFeild.text, forKey: "MyTripName")
        defaults.setObject(LocationFeild.text, forKey: "MyLocationName")
        defaults.setObject(TravelModeFeild.text, forKey: "MyTravelModepName")
        defaults.setObject(BusinessEvents.text, forKey: "MyBusinessEventsName")
        defaults.setObject(SocialEvents.text, forKey: "MySocialeventsName")
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
    
    
    @IBOutlet var ArrivalTimePicker: UIDatePicker!
    @IBOutlet var DepartureTimePicker: UIDatePicker!
    @IBOutlet var EndDateFeild: UITextField!
    @IBOutlet weak var SocialStepperOutlet: UIStepper!
    @IBOutlet weak var DepartureFeild: UITextField!
    
    
    @IBOutlet var TravelModeFeild: UITextField!
    
    
    
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
        
        dateLabelstart.addTarget(self, action: Selector("datePickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
        datePickerend.addTarget(self, action: Selector("datePickerChanged2:"), forControlEvents: UIControlEvents.ValueChanged)
        
        ArrivalTimePicker.addTarget(self, action: Selector("timePickerChanged1:"), forControlEvents: UIControlEvents.ValueChanged)
        
        DepartureTimePicker.addTarget(self, action: Selector("timePickerChanged2:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func datePickerChanged(dateLabelstart :UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        //dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate = dateFormatter.stringFromDate(dateLabelstart.date)
        StartDateFeild.text = strDate
    }
    
    func datePickerChanged2(datePickerend :UIDatePicker) {
        var dateFormatter1 = NSDateFormatter()
        
        dateFormatter1.dateStyle = NSDateFormatterStyle.ShortStyle
        //dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate1 = dateFormatter1.stringFromDate(datePickerend.date)
        EndDateFeild.text = strDate1
    }
    
    func timePickerChanged1(ArrivalTimePicker :UIDatePicker) {
        var dateFormatter1 = NSDateFormatter()
        
        //dateFormatter1.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter1.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate1 = dateFormatter1.stringFromDate(ArrivalTimePicker.date)
        ArrivalFeild.text = strDate1
    }
    
    func timePickerChanged2(DepartureTimePicker :UIDatePicker) {
        var dateFormatter1 = NSDateFormatter()
        
        //dateFormatter1.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter1.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate1 = dateFormatter1.stringFromDate(ArrivalTimePicker.date)
        DepartureFeild.text = strDate1
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

