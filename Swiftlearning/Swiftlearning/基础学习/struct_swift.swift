//
//  struct_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/9/28.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit

class struct_swift: NSObject {
    
}



func struct_mark() {
    struct MarksStruct {
        var mark:Int
        init(mark:Int) {
            self.mark = mark
        }
    }
    
    let ma = MarksStruct(mark: 20)
    var mb = ma
    mb.mark = 21
    print(ma.mark)
    print(mb.mark)
    
    
    struct markStruct{
        var mark1: Int
        var mark2: Int
        var mark3: Int
        
        init(mark1: Int, mark2: Int, mark3: Int){
            self.mark1 = mark1
            self.mark2 = mark2
            self.mark3 = mark3
        }
    }
    
    print("优异成绩:")
    let marks = markStruct(mark1: 98, mark2: 96, mark3:100)
    print(marks.mark1)
    print(marks.mark2)
    print(marks.mark3)
    
    print("糟糕成绩:")
    let fail = markStruct(mark1: 34, mark2: 42, mark3: 13)
    print(fail.mark1)
    print(fail.mark2)
    print(fail.mark3)
}



