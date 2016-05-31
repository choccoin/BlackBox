//
//  TouchID.swift
//  BlackBox
//
//  Created by Wang Cong on 16/5/25.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation
import LocalAuthentication
/*
// 错误信息枚举
enum ErrorID{
    case AuthenticationFailed
    case UserCancel
    case UserFallback
    case SystemCancel
    case PasscodeNotSet
    case TouchIDNotAvailable
    case TouchIDNotEnrolled
    case TouchIDLockout
    case AppCancel
    case InvalidContext
}
*/
class TouchID{
    var error : NSError?
    let authContext : LAContext = LAContext()
    var isAvailable : Bool
    var authOK : Bool
    
    init(){
        isAvailable = authContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error)
        self.authOK = false
    }
    
    func touch() -> Bool {
        if isAvailable {
            authContext.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "需要验证您的指纹来确认您的身份信息", reply: {
                (success, error) -> Void in
                if success {
                    self.authOK = true
                } else {
                    /*
                    switch (error!.code){
                    case LAError.AuthenticationFailed.rawValue:
                            self.authOK = false
                    case LAError.UserCancel.rawValue:
                        self.authOK = false
                    case LAError.UserFallback.rawValue:
                        self.authOK = false
                    case LAError.SystemCancel.rawValue:
                        self.authOK = false
                    case LAError.PasscodeNotSet.rawValue:
                        self.authOK = false
                    case LAError.TouchIDNotAvailable.rawValue:
                        self.authOK = false
                    case LAError.TouchIDNotEnrolled.rawValue:
                        self.authOK = false
                    case LAError.TouchIDLockout.rawValue:
                        self.authOK = false
                    case LAError.AppCancel.rawValue:
                        self.authOK = false
                   case LAError.InvalidContext.rawValue:
                        self.authOK = false
                    default:
                        self.authOK = false
                  }
                     */
                    self.authOK = false
               }
            })
            
            if self.authOK {
                return true
            }else{
                return false
            }

        }else{
            return false
        }
    
    }
}