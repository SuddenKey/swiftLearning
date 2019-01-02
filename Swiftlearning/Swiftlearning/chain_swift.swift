//
//  chain_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/9.
//  Copyright © 2018 万浩. All rights reserved.
//


//可链 可选链（Optional Chaining）是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil。
//    多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效。

import UIKit

class chain_swift: NSObject {

}


func chain_base() {
    let join = Person()
//    if let roomCount = join.residence?.numberOfRooms {
//        print("John的房间号为\(roomCount)。")
//    } else {
//        print("不能查看房间号。")
//    }
//
    
    let johnsHouse = Residence()
    johnsHouse.rooms.append(Room(name: "客厅"))
    johnsHouse.rooms.append(Room(name: "厨房"))
    join.residence = johnsHouse
    
    if (join.residence?.printNumberOfRooms()) != nil{
        print("输出房间号")
    } else {
        print("无法输出房间号")
    }
    
    let joinsAddress = Address()
    joinsAddress.buildingName = "The Larches"
    joinsAddress.street = "Laurel Street"
    join.residence?.address = joinsAddress
    
    let roomName = join.residence?[0].name
    if let johnsStreet = join.residence?.address?.street {
        print("John 所在的街道是 \(johnsStreet)。")
//        print(roomName as Any)
        print("第一个房间名为\(roomName)")

    } else {
        print("无法检索到地址。 ")
    }
}

class Person {
    var residence:Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms:Int {
        return rooms.count
    }
    subscript(i:Int)->Room {
        return rooms[i]
    }
    func printNumberOfRooms()  {
        print("房间号为 \(numberOfRooms)")
    }
    var address:Address?
    var add = Address()
    
}

class Room {
    let name: String
    init(name:String) {
        self.name = name
    }
}

class Address {
    var buildingName:String?
    var BuildingNumber:String?
    var street:String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if BuildingNumber != nil {
            return BuildingNumber
        } else {
            return nil
        }
    }
}
