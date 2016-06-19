//
//  BL.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/20.
//  Copyright © 2016年 AncStudio. All rights reserved.
//

import Foundation

class BL{ //业务逻辑层
    //插入备忘录的方法
    func createNote(model: Note)-> NSMutableArray {
        let dao : DAO = DAO.sharedInstance
        dao.create(model)
        return dao.findAll()
    }
    
    //删除备忘录的方法
    func remove(model: Note)-> NSMutableArray {
        let dao: DAO = DAO.sharedInstance
        dao.remove(model)
        return dao.findAll()
    }
    
    //查询所有数据的方法
    func findAll()->NSMutableArray{
        let dao:DAO = DAO.sharedInstance
        return dao.findAll()
    }
}