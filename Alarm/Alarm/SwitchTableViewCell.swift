//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    //MARK: - Internal Properties
    
    var alarm: Alarm? {
        didSet {
            timeLabel.text = alarm?.fireTimeAsString
            nameLabel.text = alarm?.name
            alarmSwitch.isOn = (alarm?.enabled)! //FIXME: - Fix this force unwrapp
        }
    }

    //MARK: - IBOutlets
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var alarmSwitch: NSLayoutConstraint!  // Where did this come from?
    
    @IBOutlet weak var alarmSwitch: UISwitch!
    
    //MARK: - IBActions
    
    @IBAction func switchValueChanged(_ sender: Any) {
        
        
        
    }
    


}
