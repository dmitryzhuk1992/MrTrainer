//
//  Exercise+CoreDataClass.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 20.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Exercise)
public class Exercise: NSManagedObject {
    
    convenience init() {
        //creating new object
        self.init(entity: CoreDataManager.entityForName(entityName: "Exercise"), insertInto: CoreDataManager.persistentContainer.viewContext)
    }
    
}
