//
//  UserAnswer+CoreDataProperties.swift
//  
//
//  Created by Dmitriy Zhuk on 26.11.17.
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
