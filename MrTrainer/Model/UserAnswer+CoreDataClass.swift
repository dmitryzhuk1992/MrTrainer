//
//  UserAnswer+CoreDataClass.swift
//  
//
//  Created by Dmitriy Zhuk on 26.11.17.
//
//

import Foundation
import CoreData

@objc(UserAnswer)
public class UserAnswer: NSManagedObject {

    convenience init() {
        //creating new object
        self.init(entity: CoreDataManager.entityForName(entityName: "UserAnswer"), insertInto: CoreDataManager.persistentContainer.viewContext)
    }
    
}
