//
//  NewBox.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/11.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation
import UIKit

class NewBox : UIViewController{
    @IBOutlet weak var BName: UITextField!
    @IBOutlet weak var FirstPSW: UITextField!
    @IBOutlet weak var ViewPSW: UISwitch!
    
    @IBAction func ViewPSW(sender: AnyObject) {
        if ViewPSW.on {
            FirstPSW.secureTextEntry = true
        } else {
        FirstPSW.secureTextEntry = false
        }
    }
    
}
