//
//  Domain.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/14.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation

class Note {
    var date: NSDate
    var content: NSString
    
    init(date:NSDate, content:NSString){
        self.date = date
        self.content = content
    }
}