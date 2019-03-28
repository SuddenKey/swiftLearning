//
//  class_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/9/28.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit

class class_swift: NSObject {
    
}

func class_mark() {
    let mark  = student()
    print(mark.mark)
}

class marks {
    var  mark:Int
    init(mark:Int) {
        self.mark = mark
    }


}

class student {
    var mark = 300
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
    var mark4 = 400
}

func SampleClass_print() {
    let spClass1 = SampleClass(s: "Hello")
    let spClass2 = SampleClass(s: "Hello")
    
    if spClass1 === spClass2 {// false
        print("引用相同的类实例 \(spClass1)")
    }
    
    if spClass1 !== spClass2 {// true
        print("引用不相同的类实例 \(spClass2)")
    }
}

class SampleClass: Equatable {
    static func == (lhs: SampleClass, rhs: SampleClass) -> Bool {
        return lhs.myProperty == rhs.myProperty
    }
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
