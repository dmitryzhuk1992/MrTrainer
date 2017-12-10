//
//  UserAnswer+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 07.12.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData


extension UserAnswer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserAnswer> {
        return NSFetchRequest<UserAnswer>(entityName: "UserAnswer")
    }

    @NSManaged public var answer: String?
    @NSManaged public var questionID: Question?

}
