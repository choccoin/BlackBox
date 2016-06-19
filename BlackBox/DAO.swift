//
//  DAO.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/14.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation

class DAO {
    // 保存数据列表
    var listData: NSMutableArray!
    
    class var sharedInstance: DAO{
        struct Static {
            static var instance: DAO?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token){
            Static.instance = DAO()
            
            //添加测试数据
            let dateFormatter: NSDateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            
            let date1: NSDate = dateFormatter.dateFromString("2015-01-01 16:01:02")!
            let note1: Note =  Note(date:date1, content: "Welcome to MyNote.")
            
            let date2: NSDate = dateFormatter.dateFromString("2015-01-01 18:01:22")!
            let note2: Note =  Note(date:date2, content: "欢迎使用 MyNote.")
            
            Static.instance?.listData = NSMutableArray()
            Static.instance?.listData.addObject(note1)
            Static.instance?.listData.addObject(note2)
        }
        return Static.instance!
    }
    
    //插入备忘录的方法
    func create(model: Note)-> Int{
        self.listData.addObject(model)
        return 0
    }
    
    //删除备忘录的方法
    func remove(model: Note)->Int{
        for note in self.listData {
            let note2 = note as! Note
            //比较日期主键是否相等
            if note2.date == model.date{
                self.listData.removeObject(note2)
                break
            }
        }
        return 0
    }
    
    //修改备忘录的方法
    func modify(model: Note) -> Int {
        for note in  self.listData {
            let note2 = note as! Note
            // 比较日期主键是否相等
            if note2.date == model.date {
                note2.content = model.content
                break
            }
        }
        return 0
        
    }
    
    //查询所有数据方法
    func findAll()->NSMutableArray{
        return self.listData
    }
    
    //修改备忘录的方法
    func findById(model: Note)-> Note?{
        for note in self.listData{
            let note2 = note as! Note
            //比较日期主键是否相等
            if note2.date == model.date{
                return note2
            }
            
        }
        return nil
    }
}