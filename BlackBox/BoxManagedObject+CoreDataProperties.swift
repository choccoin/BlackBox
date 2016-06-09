//
//  BoxManagedObject+CoreDataProperties.swift
//  BlackBox
//
//  Created by Wang Cong on 16/6/9.
//  Copyright © 2016年 AncStudio. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension BoxManagedObject {

    @NSManaged var name: String?
    @NSManaged var password: String?
    @NSManaged var logo: NSData?

}
