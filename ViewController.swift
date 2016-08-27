//
//  ViewController.swift
//  InteractivePopGestureRecognizer
//
//  Created by ABS on 16/2/5.
//  Copyright © 2016年 ABS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.navigationController?.pushViewController(ViewControllerNext(), animated: true)
    }
    
}

