//
//  ViewController.swift
//  PlayTime
//
//  Created by Parsons, Rachel on 1/7/16.
//  Copyright © 2016 TIAA-CREF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.picker.datePickerMode = .Time
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showDateDialog(){
        DatePickerDialog().show("Select Date of Incident", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .Date) {
            (date) -> Void in
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "dd-MM-yyyy" //format style. you can change according to yours
            let dateString = dateFormatter.stringFromDate(date)
            self.dateTextField.text = dateString
        }
    }

    func showTimeDialog(){
        DatePickerDialog().show("Select Time of Incident", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .Time) {
            (date) -> Void in
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "h:mm a" //format style. you can change according to yours
            let timeString = dateFormatter.stringFromDate(date)
            self.timeTextField.text = timeString
        }

    }
    
    @IBAction func datePickerTapped(sender: AnyObject) {
        self.showDateDialog()
        self.showTimeDialog()
    }
    
    @IBAction func dateOnlyTapped(sender: UIButton) {
        self.showDateDialog()
    }
    
    @IBAction func timeOnlyTapped(sender: AnyObject) {
        self.showTimeDialog()
    }
}

