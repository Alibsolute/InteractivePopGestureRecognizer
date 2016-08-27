//
//  ViewControllerNext.swift
//  InteractivePopGestureRecognizer
//
//  Created by ABS on 16/2/5.
//  Copyright © 2016年 ABS. All rights reserved.
//

import UIKit

class ViewControllerNext: UIViewController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()
        print(self.navigationController?.interactivePopGestureRecognizer)
        //print(self.navigationController?.interactivePopGestureRecognizer?.delegate)
        let target = self.navigationController?.interactivePopGestureRecognizer?.delegate
        let pan:UIPanGestureRecognizer = UIPanGestureRecognizer.init(target: target, action: "handleNavigationTransition:")
        pan.delegate = self
        self.view.addGestureRecognizer(pan)
        self.navigationController?.interactivePopGestureRecognizer?.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // 什么时候调用：每次触发手势之前都会询问下代理，是否触发。
    // 作用：拦截手势触发
    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        // 注意：只有非根控制器才有滑动返回功能，根控制器没有。
        // 判断导航控制器是否只有一个子控制器，如果只有一个子控制器，肯定是根控制器
        if self.childViewControllers.count == 1 {
            // 表示用户在根控制器界面，就不需要触发滑动手势
            return false
        }
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
