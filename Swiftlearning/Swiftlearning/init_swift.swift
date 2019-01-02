//
//  init_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/8.
//  Copyright © 2018 万浩. All rights reserved.
//

import UIKit

class init_swift: NSObject {

}

func init_base() {
    let rect = rectangle()
    print(rect.length * rect.breadth)
    
    let ecta = Recta(lengT: 20, braeI: 30)
    print(ecta.area)
    
    let co = Color(red: 1.0, green: 2.0, blue: 3.0)
    print(co.red, co.green, co.blue)
    
    let col = Color(white: 22.0)
    print(col.red, col.green, col.blue)

    let cool = Color(10)
    print(cool.red, cool.green, cool.blue)
    
    
    var item = ShoppingListItem()
    print("名字为: \(item.name)")
    print("数理为: \(item.quantity)")
    print("是否付款: \(item.purchased)")
}

struct rectangle {
    var length:Double
    var breadth:Double
    init() {
        length = 6
        breadth = 12
    }
}

struct Recta {
    var leng:Double
    var brae:Double
    var area:Double
    init(lengT leng:Double, braeI braeT:Double) {
        self.leng = leng
        self.brae = braeT
        area = self.leng * self.brae
    }
}

struct Color {
    let red, green, blue:Double
    init(red:Double, green:Double, blue:Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white:Double) {
        red = white
        green = white
        blue = white
    }
    
    init( _ area:Double) {
        red = area
        green = area
        blue = area
    }
}

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

//值类型的构造器代理
struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    init() {
    }
    
    init(origin:Point, size:Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center:Point, Size:Size) {
        let originX = center.x - (Size.width / 2)
        let originY = center.y - (Size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: Size)
    }
}


