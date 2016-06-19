//
//  NewBox.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/11.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation
import UIKit
//import CoreData

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
    @IBAction func createBox(sender: AnyObject) {
 //       let dataApp = UIApplication.sharedApplication().delegate as! AppDelegate
   //     let context = dataApp.managedObjectContext
    }
    
}
