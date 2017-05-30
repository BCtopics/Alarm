//
//  DateHelper.swift
//  Alarm
//
//  Created by Bradley GIlmore on 5/30/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

enum DateHelper {
    
    static var thisMorningAtMidnight: Date? {
        let calendar = Calendar.current
        let now = Date()
        return calendar.date(bySettingHour: 0, minute: 0, second: 0, of: now)
    }
    
    static var tomorrowMorningAtMidnight: Date? {
        let calendar = Calendar.current
        guard let thisMorningAtMidnight = thisMorningAtMidnight else { return nil }
        return calendar.date(byAdding: .day, value: 1, to: thisMorningAtMidnight)
    }
}

