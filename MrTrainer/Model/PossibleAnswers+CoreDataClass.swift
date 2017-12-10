//
//  PossibleAnswers+CoreDataClass.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData

@objc(PossibleAnswers)
public class PossibleAnswers: NSManagedObject {

    convenience init() {
        //creating new object
        self.init(entity: CoreDataManager.entityForName(entityName: "PossibleAnswers"), insertInto: CoreDataManager.persistentContainer.viewContext)
    }
    
}
