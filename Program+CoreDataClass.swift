//
//  Program+CoreDataClass.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 20.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Program)
public class Program: NSManagedObject {
    
    convenience init() {
        //creating new object
        self.init(entity: CoreDataManager.entityForName(entityName: "Program"), insertInto: CoreDataManager.persistentContainer.viewContext)
    }
    
}
