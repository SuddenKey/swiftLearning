//
//  Protocol_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/10.
//  Copyright © 2018 万浩. All rights reserved.
//

import UIKit

class Protocol_swift: NSObject {

}

func Protocol_Base() {
    var res = days.wed
    res.show()
    
    var items = [10, 20, 30].makeIterator()
    while let x = items.next() {
        print(x)
    }
    
    for lists in [1, 2, 3].map({i in i * 5}) {
        print(lists)
    }
    print([100,200,300])
    print([1,2,3].map({i in i*10}))
    
    
    let studname = aPerson(name: "Priya", age: 21)
    print(studname)
    
    let stud = aPerson(name: "Rehan", age: 29)
    print(stud)
    
    let student = aPerson(name: "Roshan", age: 19)
    print(student)
    
    let objects:[AnyObject] = [
        Circle(radius: 2.0),
        Country(area: 243_610),
        Animals(legs: 4)
    ]
    
    for object in objects {
        // 对迭代出的每一个元素进行检查，看它是否遵循了HasArea协议
        if let objectWithArea = object as? HasArea {
            print("面积为 \(objectWithArea.area)")
        } else {
            print("没有面积")
        }
    }
    
    
}

class aa {
    
}

protocol SomeProtocol {
    //协议内容
    var mark:Int{get set}
    var result:Int{get}
    
    func attend() -> String
    func markssecured() -> String
}

struct Someclass:SomeProtocol {
    func attend() -> String {
        return "1"
    }
    func markssecured() -> String {
        return "1"
    }
    var mark: Int
    var result: Int
    //类的内容
}

class som: aa, SomeProtocol{
    var mark: Int = 0
    var result: Int = 0
    func attend() -> String {
        return "1"
    }
    func markssecured() -> String {
        return "1"
    }
    
}


//对 Mutating 方法的规定

//有时需要在方法中改变它的实例。
//例如，值类型(结构体，枚举)的实例方法中，将mutating关键字作为函数的前缀，写在func之前，表示可以在该方法中修改它所属的实例及其实例属性的值

protocol daysofaweek {
    mutating func show()
}
enum days: daysofaweek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func show() {
        switch self {
        case .sun:
            self = .sun
            print("Sunday")
        case .mon:
            self = .mon
            print("Monday")
        case .tue:
            self = .tue
            print("Tuesday")
        case .wed:
            self = .wed
            print("Wednesday")
        case .thurs:
            self = .thurs
            print("Wednesday")
        case .fri:
            self = .fri
            print("Wednesday")
        case .sat:
            self = .sat
            print("Saturday")
        default:
            print("NO Such Day")
        }
    }
}

//对构造器的规定
//你可以在遵循该协议的类中实现构造器，并指定其为类的指定构造器或者便利构造器。在这两种情况下，你都必须给构造器实现标上"required"修饰符
//使用required修饰符可以保证：所有的遵循该协议的子类，同样能为构造器规定提供一个显式的实现或继承实现。
//如果一个子类重写了父类的指定构造器，并且该构造器遵循了某个协议的规定，那么该构造器的实现需要被同时标示required和override修饰符：



protocol SomPro {
    init(someParameter:Int)
}
 
class som1: SomPro {
    required init(someParameter: Int) {
        
    }
}

class sup {
    init(someParameter:Int) {
        
    }
}

class som2:sup, SomPro {
    
    var no2:Int
    
    init(no1:Int, no2:Int) {
        self.no2 = no2
        super.init(someParameter: no1)
    }
    required override convenience init(someParameter: Int) {
        self.init(no1: someParameter, no2: 0)
    }
}

//协议类型
//尽管协议本身并不实现任何功能，但是协议可以被当做类型来使用。
//协议可以像其他普通类型一样使用，使用场景:
//作为函数、方法或构造器中的参数类型或返回值类型
//作为常量、变量或属性的类型
//作为数组、字典或其他容器中的元素类型
protocol Generator {
    associatedtype menbers
    func next() -> menbers?
}


//在扩展中添加协议成员
//我们可以可以通过扩展来扩充已存在类型( 类，结构体，枚举等)。
//扩展可以为已存在的类型添加属性，方法，下标脚本，协议等成员
protocol AgeClasificationProtocol {
    var age:Int{get}
    func ageType() -> String
}

class Perpon {
    let firstname: String
    let lastname: String
    var age: Int
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = 10
    }
}

//协议的继承
//协议能够继承一个或多个其他协议，可以在继承的协议基础上增加新的内容要求。
//协议的继承语法与类的继承相似，多个被继承的协议间用逗号分隔：
protocol Classa {
    var no1:Int{get set}
    func calc(sun:Int)
}

protocol Result {
    func print(tagget:Classa)
}

class Student1: Result {
    func print(tagget: Classa) {
        tagget.calc(sun: 1)
    }
}

class classB: Result {
    func print(tagget: Classa) {
        tagget.calc(sun: 2)
    }
}


class Student: Classa {
    var no1: Int = 10
    func calc(sun: Int) {
        no1 -= sun
        print(sun)
        if no1 <= 0 {
            print("缺席考试")
        }
    }
}

class Player {
    var stamark:Result!
    
    init(astmark:Result) {
        self.stamark = astmark
    }
    
    func print(target:Classa)  {
        self.stamark.print(tagget: target)
    }
    
}

//类专属协议
//你可以在协议的继承列表中,通过添加class关键字,限制协议只能适配到类（class）类型。

protocol TcpProtocol {
    init(no1: Int)
}

protocol Stname {
    var name: String { get }
}

protocol Stage {
    var age: Int { get }
}

struct aPerson: Stname, Stage {
    var name: String
    var age: Int
}

//检验协议的一致性
//你可以使用is和as操作符来检查是否遵循某一协议或强制转化为某一类型。
//is操作符用来检查实例是否遵循了某个协议。
//as?返回一个可选值，当实例遵循协议时，返回该协议类型;否则返回nil。
//as用以强制向下转型，如果强转失败，会引起运行时错误。
protocol HasArea {
    var area: Double { get }
}

// 定义了Circle类，都遵循了HasArea协议
class Circle: HasArea {
    let pi = 3.1415927
    var radius: Double
    var area: Double { return pi * radius * radius }
    init(radius: Double) { self.radius = radius }
}

// 定义了Country类，都遵循了HasArea协议
class Country: HasArea {
    var area: Double
    init(area: Double) { self.area = area }
}

class Animals {
    var legs:Int
    init(legs:Int) {
        self.legs = legs
    }
}



