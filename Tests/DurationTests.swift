//
//  DurationTests.swift
//  Timepiece
//
//  Created by Naoto Kaneko on 2014/08/17.
//  Copyright (c) 2014年 Naoto Kaneko. All rights reserved.
//

import Timepiece
import XCTest

class DurationTestCase: XCTestCase {
    
    func testAgo() {
        let duration = Duration(value: 1, unit: .CalendarUnitDay)
        let oneDayMinus = NSDate() - 1.day
        XCTAssertEqualWithAccuracy(duration.ago.timeIntervalSince1970, oneDayMinus.timeIntervalSince1970, 0.01, "")
    }
    
    func testLater() {
        let duration = Duration(value: 1, unit: .CalendarUnitDay)
        let oneDayPlus = NSDate() + 1.day
        XCTAssertEqualWithAccuracy(duration.later.timeIntervalSince1970, oneDayPlus.timeIntervalSince1970, 0.01, "")
    }
}
