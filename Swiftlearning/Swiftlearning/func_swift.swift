//
//  func_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/9/27.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit

struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        print(length)
        print(breadth)
    }
}

struct Matrix {
    let rows:Int, columns:Int
    var print:[Double]
    init(rows:Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        print = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row:Int, column:Int) -> Double{
        get{
            return print[(row * columns) + column]
        }
        set {
            print[(row * columns) + column] = newValue
        }
    }
    
}

class func_swift: NSObject {
    //实例方法
    //可以访问和修改实例属性
    //提供与实例目的相关的功能
    func runoob1(state:String){
        print(state)
    }
    //Swift 默认仅给方法的第一个参数名称一个局部参数名称;默认同时给第二个和后续的参数名称为全局参数名称。
    
    var count: Int = 0
    func incrementBy(no1: Int, _ no2: Int) {
        count = no1 / no2
        print(count)
    }
    
    init(a:Int, b:Int) {
        print(a, b)
    }
    
    class func abs(number:Int) -> Int {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}

struct subexample {
    let demen:Int
    subscript(index:Int)-> Int{
        return demen / index
    }
}

func runoob(state:String){
    print(state)
}

func vari<N>(members:N...) {
    for i in members {
        print(i)
    }
}

func variableData(a:inout Int, b:inout Int)->(min:Int, max:Int){
    let medianD = a
    a = b
    b = medianD
    return (min:a , max:b)
}

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

func textString(state:String)->(String){
    return state
}

var text:(String)->(String) = textString


func getString(text:(String)->(String)){
    print(text("asd"))
}


//将func作为参数传递
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("输出结果: \(addition(a, b))")
}




func hasAnyMatches(list:[Int], condition:(Int)->Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) ->Bool {
    return number < 7
}

let number = [8, 9, 10, 11]

let result = hasAnyMatches(list: number, condition: lessThanTen)

func getResult() {
    print(result)
}

