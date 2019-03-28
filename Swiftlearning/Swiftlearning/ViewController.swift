//
//  ViewController.swift
//  Swiftlearning
//
//  Created by 万浩 on 2018/8/9.
//  Copyright © 2018年 万浩. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UINavigationControllerDelegate{
    
    let transitionCoordinatorDelegate = TransitionCoordinator.init()
    
    @IBOutlet weak var clickBtn: UIButton!
    var baseLabel:UIView!
    

    @objc func btnClick() {
        let vc = TwoVC()
        self.transitionCoordinatorDelegate.animationWith(fromVC: self, toView: vc, clickView: self.baseLabel, frame: self.baseLabel.frame) { (result) in
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clickBtn.addTarget(self, action: #selector(btnClick), for: UIControl.Event.touchUpInside)
        
        self.baseLabel = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        self.baseLabel.backgroundColor = UIColor.blue
        self.baseLabel.center = self.view.center
        self.view.addSubview(self.baseLabel)
//        addTableView()
//        setUpSubView()
//        arrayBase()
//        setBase()
//        dictBase()
//        fun_allfun()
//        closure_clo()
//
//        swift_print()
//        rese(operation: "ww")
//        makeIncrementByTen()
//        weekEnum()
//        struct_mark()
//        class_mark()
//        getResult()
//        let fuc_sw = func_swift(a: 6, b: 3)
//        let fuc_sw2 = func_swift(a: 1, b: 2)
//        fuc_sw2.runoob1(state: "qwerty")
//        fuc_sw2.incrementBy(no1: 3, 1)
//
//        let fuc_sw4 = func_swift.abs(number: 3)
//        print(fuc_sw4)
//        let x = subexample(demen:100)
//        print(x)
//        print(x[100], x[20])
        
//        var matrix = Matrix(rows: 3, columns: 3)
//        matrix[0,0] = 1.0
//        matrix[0,1] = 2.0
//        matrix[1,0] = 3.0
//        matrix[1,1] = 4.0
//        print("\(matrix[0,0])")
//        Jicheng_Base()
//        init_base()
//        chain_base()
//        ARC_Base()
//        Protocol_Base()
//        Generic_Base()
        
//        Closures_swift.init().newClosures(clo: <#(Int) -> Void#>)
//        let clo = Closures_swift()
    }
    
    func setPool() {
        
    }
    
    func fun_allfun() {
        runoob(state: "www.baidu.com")
        vari(members: 1.1, 1.2, 1.3)
        if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
            print("最小值为 \(bounds.min)，组大值为 \(bounds.max)")
        }
        another(addition: sum, a: 10, b: 20)
    }
    
    func addTableView(){
        let a = 3+4
        var numberArr:[Int] = [1, 2, 3, 4, 5]
        numberArr.append(7)
        numberArr += [8]
        for i in numberArr {
            print(i)
        }
        for (index, item) in numberArr.enumerated() {
            print("在 index = \(index), 是 item = \(item)")
        }
        print(numberArr.count)
    }
    
    func arrayBase() {
        let a = 3+4
        var numberArr:[Int] = [1, 2, 3, 4, 5]
        numberArr.append(7)
        numberArr += [8]
        for i in numberArr {
            print(i)
        }
        for (index, item) in numberArr.enumerated() {
            print("在 index = \(index), 是 item = \(item)")
        }
        print(numberArr.count)
    }
    
    func dictBase() {
        var someDict:[Int:String] = [1:"1", 2:"2", 3:"3"]
        let some = someDict[1]
        print(some as Any)
        someDict.updateValue("xxxx", forKey: 2)
        someDict.removeValue(forKey: 1)
        someDict[1] = nil
        print(someDict)
        for (key, value) in someDict {
            print(key, value)
        }
        for (key, value) in someDict.enumerated() {
            print("key \(key), value \(value)")
        }
        let dat:[Int:String] = [:]
        print("dat:\(dat.isEmpty)")
    }
    
    func setBase() {
        //集合的基本操作
//        intersection(_:)：根据两个集合中都包含的值创建的一个新的集合。
//        symmetricDifference(_:)：根据在一个集合中但不在两个集合中的值创建一个新的集合。
//        union(_:)：根据两个集合的值创建一个新的集合。
//        subtracting(_:)：根据不在该集合中的值创建一个新的集合。
        var setNN = Set<String>()//创建空集合
        setNN = ["ervso", "fsnfkndsfe", "sdkds", "sndkfds", "fwef", " dsvdvwe"]
        for index in setNN {
            print(index)
        }
        var setMM:Set<String> = ["xx"]
        setNN.insert("4")
        let result = setNN.filter({$0.hasSuffix("e")})
        //集合的基本关系判断
//        ==：判断两个集合是否包含全部相同的值。
//        isSubset(of:)：判断一个集合中的值是否也被包含在另外一个集合中。
//        isSuperset(of:)：判断一个集合中包含另一个集合中所有的值。
//        isStrictSubset(of:)：判断一个集合是否是另外一个集合的子集合，并且两个集合并不相等。
//        isStrictSuperset(of:)：判断一个集合是否是另外一个集合的父集合，并且两个集合并不相等。
//        isDisjoint(with:)：判断两个集合是否不含有相同的值（是否没有交集）。
        
        print(result,"111");
    }
    
    func setUpSubView() {
        let a = "111"
        let b:NSInteger = 999
        let c = a + String(b)
        print(c);
    }
}

