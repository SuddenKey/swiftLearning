//
//  CircularTransition.swift
//  Swiftlearning
//
//  Created by wanhao on 2019/3/28.
//  Copyright © 2019 万浩. All rights reserved.
//

import UIKit

//protocol CircleTransitionable {
//    var triggerButton: UIButton { get }
//    var contentTextView: UITextView { get }
//    var mainView: UIView { get }
//}

class CircularTransition: NSObject, UIViewControllerAnimatedTransitioning{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }

}
