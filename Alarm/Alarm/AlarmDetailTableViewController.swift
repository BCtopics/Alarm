//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if alarm != nil {
            updateViews()
        } else {
            enableButton.isHidden = true
        }
    }

    //MARK: - IBOutlets
    
    @IBOutlet weak var enableButton: UIButton!
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var timeDatePicker: UIDatePicker!
    
    
    //MARK: - IBActions
    
    @IBAction func enableButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    //MARK: - Internal Properties
    
    var alarm: Alarm?
//    {
//        didSet {
//            //FIXME: - Need to add a check to see if viewhasloaded
//            updateViews()
//        }
//    }
    
    //MARK: - UpdateViews()
    
    private func updateViews() {
        
        guard let alarm = alarm,
            let thisMorningAtMidnight = DateHelper.thisMorningAtMidnight,
            isViewLoaded else {
                return
        }
        
        timeDatePicker.setDate(Date(timeInterval: alarm.fireTimeFromMidnight, since: thisMorningAtMidnight), animated: false) // We are getting these times from the alarm. and the DateHelper
        noteTextField.text = alarm.name
        
        enableButton.isHidden = false
        if alarm.enabled {
            enableButton.setTitle("Disable", for: UIControlState())
            enableButton.setTitleColor(.white, for: UIControlState())
            enableButton.backgroundColor = .red
        } else {
            enableButton.setTitle("Enable", for: UIControlState())
            enableButton.setTitleColor(.blue, for: UIControlState())
            enableButton.backgroundColor = .gray
        }
        
        self.title = alarm.name
    }
    


}








