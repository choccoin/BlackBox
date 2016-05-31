//
//  ViewController.swift
//  BlackBox
//
//  Created by 王聪 on 16/5/17.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import UIKit
import LocalAuthentication



class ViewController: UIViewController {
    @IBAction func touchIDFun(sender: AnyObject) {
        let tID : TouchID = TouchID()
        tID.touch()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

