//
//  Exercise+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 20.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit


extension Exercise {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exercise> {
        return NSFetchRequest<Exercise>(entityName: "Exercise")
    }

    @NSManaged public var difficulty: String?
    @NSManaged public var duration: Double
    @NSManaged public var identifier: Int16
    @NSManaged public var images: [UIImage]?
    @NSManaged public var isFavourite: Bool
    @NSManaged public var muscles: [String]?
    @NSManaged public var text: [String]?
    @NSManaged public var thumbnails: [UIImage]?
    @NSManaged public var title: String?
    @NSManaged public var program: NSSet?

}

// MARK: Generated accessors for program
extension Exercise {

    @objc(addProgramObject:)
    @NSManaged public func addToProgram(_ value: Program)

    @objc(removeProgramObject:)
    @NSManaged public func removeFromProgram(_ value: Program)

    @objc(addProgram:)
    @NSManaged public func addToProgram(_ values: NSSet)

    @objc(removeProgram:)
    @NSManaged public func removeFromProgram(_ values: NSSet)

}
