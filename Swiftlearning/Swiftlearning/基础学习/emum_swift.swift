//
//  emum_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/9/28.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit

enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}

enum month:Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

class emum_swift: NSObject {

}

func weekEnum() {
    let weeks = DaysofaWeek.Sunday
//    weeks = .FRIDAY
    switch weeks {
    case .Sunday:
        print("Sunday")
    case .Monday:
        print("Monday")
    case .TUESDAY:
        print("TUESDAY")
    case .WEDNESDAY:
        print("WEDNESDAY")
    case .THURSDAY:
        print("THURSDAY")
    case .FRIDAY:
        print("FRIDAY")
    case .Saturday:
        print("Saturday")
    }
    
    let monthDay = month.February.rawValue
    print(monthDay)
}
