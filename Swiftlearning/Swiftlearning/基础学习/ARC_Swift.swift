//
//  ARC_Swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/9.
//  Copyright © 2018 万浩. All rights reserved.
//

import UIKit

//当每次使用 init() 方法创建一个类的新的实例的时候，ARC 会分配一大块内存用来储存实例的信息。
//内存中会包含实例的类型信息，以及这个实例所有相关属性的值。
//当实例不再被使用时，ARC 释放实例所占用的内存，并让释放的内存能挪作他用。
//为了确保使用中的实例不会被销毁，ARC 会跟踪和计算每一个实例正在被多少属性，常量和变量所引用。
//实例赋值给属性、常量或变量，它们都会创建此实例的强引用，只要强引用还在，实例是不允许被销毁的。

class ARC_Swift: NSObject {
    
}

func ARC_Base() {
    // 两个变量都被初始化为nil
    var runoob: ARC_Person?
    var number73: Apartment?
    
    // 赋值
    runoob = ARC_Person(name: "Runoob")
    number73 = Apartment(number: 73)
    
    // 意感叹号是用来展开和访问可选变量 runoob 和 number73 中的实例
    // 循环强引用被创建
    runoob!.apartment = number73
    number73!.tenant = runoob
    
    // 断开 runoob 和 number73 变量所持有的强引用时，引用计数并不会降为 0，实例也不会被 ARC 销毁
    // 注意，当你把这两个变量设为nil时，没有任何一个析构函数被调用。
    // 强引用循环阻止了Person和Apartment类实例的销毁，并在你的应用程序中造成了内存泄漏
    runoob = nil
    number73 = nil
    
    
    let paragra:HTMLElement? = HTMLElement(name: "p", text: "Hello world")
    print(paragra!.asHRML())
}


class ARC_Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) 被析构") }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    var tenant: ARC_Person?
    deinit { print("Apartment #\(number) 被析构") }
}


//解决实例之间的循环强引用

//Swift 提供了两种办法用来解决你在使用类的属性时所遇到的循环强引用问题：
//弱引用   weak
//无主引用 unowned
//弱引用和无主引用允许循环引用中的一个实例引用另外一个实例而不保持强引用。这样实例能够互相引用而不产生循环强引用。
//对于生命周期中会变为nil的实例使用弱引用。相反的，对于初始化赋值后再也不会被赋值为nil的实例，使用无主引用。



//闭包引起的循环强引用
//当闭包和捕获的实例总是互相引用时并且总是同时销毁时，将闭包内的捕获定义为无主引用。
//相反的，当捕获引用有时可能会是nil时，将闭包内的捕获定义为弱引用。
//如果捕获的引用绝对不会置为nil，应该用无主引用，而不是弱引用。
class HTMLElement {
    let name:String
    let text:String?
    lazy var asHRML:() -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    init(name:String, text:String) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
