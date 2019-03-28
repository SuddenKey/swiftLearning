//
//  Closures_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/9/27.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit
import Foundation

public  typealias   x = (_ send:Int)-> Void

class Closures_swift: NSObject {
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    
    func newClosures(clo:@escaping x) {
        var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        names.sort { (x, y) -> Bool in
            return true
        }
        print(names)
    }
}

//闭包的格式
//{(Int, Int)->Int in
//    statement1
//    statement2
//    statement3
//    statement4
//}

func swift_print(){
    print("wwww")
}

//闭包
func closure_clo() {
    let studname = { print("Swift 闭包实例。") }
    studname()
    
    let devi = {(val1:Int, val2:Int)->Int in
        return val1 / val2
    }
    let result = devi(200, 20)
    print(result)
}



//
var names = ["AT", "AE", "D", "S", "BE"]

func backGround(s1:String, s2:String) -> Bool {
    return s1>s2
}

func rese(operation:String) {
    let reserved = names.sorted(by: backGround)
    print(reserved, "reserved")
    
    let reserved1 = names.sorted(by: {$0<$1})
    print(reserved1, "reserved1")
    
    let reserved2 = names.sorted(by: >)
    print(reserved2, "reserved2")
    
    let reserved3 = names.sorted {$0>$1}
    print(reserved3, "reserved3")

}

//
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)

let otherIncrementByTen = incrementByTen

func makeIncrementByTen() {
    // 返回的值为10
    print(incrementByTen())
    // 返回的值为20
    print(incrementByTen())
    // 返回的值为30
    print(incrementByTen())
    print(otherIncrementByTen())
}

