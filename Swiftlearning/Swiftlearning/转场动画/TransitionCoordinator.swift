//
//  TransitionCoordinator.swift
//  Swiftlearning
//
//  Created by wanhao on 2019/3/28.
//  Copyright © 2019 万浩. All rights reserved.
//

import UIKit

class TransitionCoordinator: NSObject, UINavigationControllerDelegate{
    //所有这个方法需要做的是查看它正在移动的视图控制器，以及它移动到的哪个视图控制器，并返回该对的适当动画对象。
    weak var clickView:UIView!
    var frame:CGRect!
    static private var timeInterval = 0.5
    var toVC:TwoVC?

    func animationWith(fromVC:UIViewController, toView:UIViewController, clickView:UIView, frame:CGRect, complete: ((Bool)-> Void)?) {
        self.clickView = clickView
        self.frame = frame
        self.toVC = (toView as! TwoVC)
        fromVC.navigationController?.delegate = self
        fromVC.navigationController?.pushViewController(toView, animated: true)
        
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TransitionAnim.init(fromView: fromVC.view, toView: toVC.view, baseVI: self.clickView)
    }
}


class TransitionAnim: NSObject {
    weak var clickView:UIView!
    var frame:CGRect!
    static private var timeInterval = 0.5
    var toVC:TwoVC?
    init(fromView:UIView, toView:UIView, baseVI:UIView) {
        self.clickView = baseVI
    }
}

extension TransitionAnim:UIViewControllerAnimatedTransitioning {
    //时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let toVC = transitionContext.viewController(forKey: .to)
        let fromVC = transitionContext.viewController(forKey: .from)
//        self.scale(fromView: fromVC!.view, toView: toVC!.view, transitionContext: transitionContext, baseVI:self.clickView)
        self.scale(fromView: fromVC!.view, toView: toVC!.view, transitionContext: transitionContext, baseVI: self.clickView)
    }
}

extension TransitionAnim {
    private func scale(fromView:UIView, toView:UIView, transitionContext:UIViewControllerContextTransitioning, baseVI:UIView) {
        transitionContext.containerView.addSubview(toView)
        transitionContext.containerView.bringSubviewToFront(fromView)
        UIView.animate(withDuration: 2, animations: {
            fromView.alpha = 0
            fromView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
            toView.alpha = 1.0
            baseVI.frame = CGRect.init(x: 0, y: 0, width: 300, height: 300)
        }) { (_) in
            fromView.transform = CGAffineTransform(scaleX: 1, y: 1)
            transitionContext.completeTransition(true)
            fromView.alpha = 1.0
        }
    }
}
