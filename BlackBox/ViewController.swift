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
        let authenticationContext = LAContext()
        var error: NSError?
        
        let isTouchIdAvailable = authenticationContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error)
        
        if isTouchIdAvailable
        {
            NSLog("恭喜，Touch ID可以使用！")
            //步骤2：获取指纹验证结果
            
            authenticationContext.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "需要验证您的指纹来确认您的身份信息", reply: {
                (success, error) -> Void in
                if success
                {
                    NSLog("恭喜，您通过了Touch ID指纹验证！")
                }
                else
                {
                    NSLog("抱歉，您未能通过Touch ID指纹验证！\n\(error)")
                    switch (error!.code){
                    case LAError.SystemCancel.rawValue:
                        
                            NSLog("切换到其他APP，系统取消验证Touch ID")
                            //切换到其他APP，系统取消验证Touch ID
                    case LAError.UserCancel.rawValue:
                            NSLog("用户取消验证Touch ID");
                            //用户取消验证Touch ID
                    case LAError.UserFallback.rawValue:
                        NSLog("用户选择输入密码，切换主线程处理");
                                //用户选择输入密码，切换主线程处理
                    default:
                        NSLog("其他情况，切换主线程处理");
                                //其他情况，切换主线程处理
                    }
                }
            })
        }
        else
        {  
            NSLog("抱歉，Touch ID不可以使用！\n\(error)")  
        }
        
        
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

