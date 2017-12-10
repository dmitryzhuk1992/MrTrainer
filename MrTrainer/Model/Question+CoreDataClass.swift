//
//  Question+CoreDataClass.swift
//  
//
//  Created by Dmitriy Zhuk on 26.11.17.
//
//

import Foundation
import CoreData

@objc(Question)
public class Question: NSManagedObject {
    
    convenience init() {
        //creating new object
        self.init(entity: CoreDataManager.entityForName(entityName: "Question"), insertInto: CoreDataManager.persistentContainer.viewContext)
    }
    
}
