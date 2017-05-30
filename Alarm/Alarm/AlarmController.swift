//
//  AlarmController.swift
//  Alarm
//
//  Created by Bradley GIlmore on 5/30/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class AlarmController {
    
    //MARK: - Shared Instances
    
    static let shared = AlarmController()
    
    //MARK: - Internal Properties 
    
    var alarms: [Alarm] = []
    
    
    //MARK: - Create, Update, Delete
    
    // Create
    func addAlarm(fireTimeFromMidnight: TimeInterval, name: String) {
        let alarm = Alarm(fireTimeFromMidnight: fireTimeFromMidnight, name: name)
        alarms.append(alarm)
    }
    
    // Update
    func update(alarm: Alarm, fireTimeFromMidnight: TimeInterval, name: String) {
        alarm.fireTimeFromMidnight = fireTimeFromMidnight
        alarm.name = name
    }
    
    // Delete 
    func delete(alarm: Alarm) {
        guard let index = alarms.index(of: alarm) else { return }
        alarms.remove(at: index)
    }
    
    
}
