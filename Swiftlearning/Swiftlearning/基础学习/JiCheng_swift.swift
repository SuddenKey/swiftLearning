//
//  JiCheng_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/8.
//  Copyright © 2018 万浩. All rights reserved.
//

import UIKit

class JiCheng_swift: NSObject {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    convenience init(name:String, text:String) {
        self.init(name:"1111")
    }
}

class MainClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[匿名]")
    }
}

class subJiCheng: MainClass {
    var count:Int
    init(name: String, count: Int) {
        self.count = count
        super.init(name: name)
    }
    
    override init(name: String) {
        self.count = 10
        super.init(name: "name+name")
    }
}

func Jicheng_Base() {
    let stname = "swift"
    let mark1 = 98
    let mark2 = 89
    let mark3 = 76
    let sds = StudDetails(stname:stname, mark1:mark1, mark2:mark2, mark3:mark3);
    print(sds.stname)
    print(sds.mark1)
    print(sds.mark2)
    print(sds.mark3)
    
    let a = sonClass()
    print(a.stname, "son")
    print(a.mark1, "son")
    print(a.mark2, "son")
    print(a.mark3, "son")
    
    let b = Rectangle(stname: "222", mark1: 1, mark2: 2, mark3: 3)
    print(b.area)
    
    let c = Square(stname: "222", mark1: 1, mark2: 2, mark3: 3)
    print(c.stname)
    
    //通过该可失败构造器来构建一个Animal的对象，并检查其构建过程是否成功
    // someCreature 的类型是 Animal? 而不是 Animal
    let someCreature = Animal(Sepcies:"")
    
    // 打印 "动物初始化为长颈鹿"
    if let giraffe = someCreature {
        print("动物初始化为\(giraffe.species)")
    }
    
    //枚举类型的可失败构造器

}

//final 防止继承
class StudDetails {
    var stname: String
    var mark1: Int
    var mark2: Int
    var mark3: Int
    var area:String {
        return "-----"
    }
    
    init(stname: String, mark1: Int, mark2: Int, mark3: Int) {
        self.stname = stname
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
    
    init(name:String) {
        self.stname = name
        self.mark1 = 1
        self.mark2 = 1
        self.mark3 = 1
    }
    
    func show() {
        print("这是超类")
    }
}


class sonClass: StudDetails {
    init() {
        super.init(stname: "swift", mark1: 1, mark2: 2, mark3: 3)
    }
}

//重写（Overriding, 子类可以通过继承来的实例方法，类方法，实例属性，或下标脚本来实现自己的定制功能，我们把这种行为叫重写（overriding）。
class subClass: StudDetails {
    override func show() {
        print("子类打印")
    }
}

//重写属性
class Rectangle: StudDetails {
    var print = "print"
    var Registe = "Registe"
    
    override var area: String{
        return super.area + "+++++"
    }
    
}

//属性观察器
class Square:Rectangle {
    override var stname: String {
        didSet {
            print = stname + "area"
        }
    }
}


struct Animal {
    let species :String
    init?(Sepcies:String) {
        if Sepcies.isEmpty {
            return nil
        }
        self.species = Sepcies
    }
}

