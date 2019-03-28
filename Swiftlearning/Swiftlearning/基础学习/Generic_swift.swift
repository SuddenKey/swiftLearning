//
//  Generic_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/12.
//  Copyright © 2018 万浩. All rights reserved.
//



//泛型
//Swift 提供了泛型让你写出灵活且可重用的函数和类型。
//Swift 标准库是通过泛型代码构建出来的。
//Swift 的数组和字典类型都是泛型集。
//你可以创建一个Int数组，也可创建一个String数组，或者甚至于可以是任何其他 Swift 的类型数据数组
import UIKit

class Generic_swift: NSObject {

}

func Generic_Base() {
    var numb1 = 100
    var numb2 = 200
    print("交换前数据: \(numb1) 和 \(numb2)")
    swapTwo(&numb1, &numb2)
    print("交换后数据: \(numb1) 和 \(numb2)")
    
    
    var stackOfStrings = Stack<String>()
    print("字符串元素入栈: ")
    stackOfStrings.push("google")
    stackOfStrings.push("runoob")
    print(stackOfStrings.items);
}

func swapTwo(_ a:inout Int,_ b:inout Int) {
    let temp = a
    a = b
    b = temp
}

func sw(_ a:NSString,_ b:NSString) {
    print(a, b)
}

func swapTwoVlues<T>(_ a:inout T,_ b:inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

//泛型类型
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

//扩展泛型类型
//当你扩展一个泛型类型的时候（使用 extension 关键字），你并不需要在扩展的定义中提供类型参数列表。更加方便的是，原始类型定义中声明的类型参数列表在扩展里是可以使用的，并且这些来自原始类型中的参数名称会被用作原始定义中类型参数的引用
extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}


func findIndex(_ valueToFind: String, _ array: [String]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            // 找到返回索引值
            return index
        }
    }
    return nil
}

//类型约束
//类型约束指定了一个必须继承自指定类的类型参数，或者遵循一个特定的协议或协议构成。
func someFunction<T: Generic_swift, U: SomeProtocol>(someT: T, someU: U) {
    // 这里是泛型函数的函数体部分
}

//关联类
// Container 协议
protocol Container {
    associatedtype ItemType
    // 添加一个新元素到容器里
    mutating func append(_ item: ItemType)
    // 获取容器中元素的数
    var count: Int { get }
    // 通过索引值类型为 Int 的下标检索到容器中的每一个元素
    subscript(i: Int) -> ItemType { get }
}




