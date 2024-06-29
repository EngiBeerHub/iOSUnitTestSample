//
//  DateProtocol.swift
//  UnitTestSample
//
//  Created by RyosukeSeki on 2024/06/29.
//

import Foundation

protocol DateProtocol {
    func now() -> Date
}

class DateDefault: DateProtocol {
    func now() -> Date {
        return Date()
    }
}

class CalendarUtil {
    let dateProtocol: DateProtocol
    
    init(dateProtocol: DateProtocol = DateDefault()) {
        self.dateProtocol = dateProtocol
    }
    
    func isHoliday() -> Bool {
        let now = dateProtocol.now()
        
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: now)
        
        return weekday == 1 || weekday == 7
    }
}
