//
//  TypeChange_swift.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/10/10.
//  Copyright © 2018 万浩. All rights reserved.
//

import UIKit

class TypeChange_swift: NSObject {

}

//检查类型
//类型检查使用 is 关键字。

func TypeChange_base() {
    let sa = [
        Chemistry(physics: "固体物理", equations: "赫兹"),
        Maths(physics: "流体动力学", formulae: "千兆赫")]
    
    let samplechem = Chemistry(physics: "固体物理", equations: "赫兹")
    
    let samplemaths = Maths(physics: "流体动力学", formulae: "千兆赫")

}

class Subjects {
    var physics: String
    init(physics: String) {
        self.physics = physics
    }
}

class Chemistry: Subjects {
    var equations: String
    init(physics: String, equations: String) {
        self.equations = equations
        super.init(physics: physics)
    }
}

class Maths: Subjects {
    var formulae: String
    init(physics: String, formulae: String) {
        self.formulae = formulae
        super.init(physics: physics)
    }
}
