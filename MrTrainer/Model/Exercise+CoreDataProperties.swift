//
//  Exercise+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 23.11.17.
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
    @NSManaged public var programs: NSSet?

}

// MARK: Generated accessors for programs
extension Exercise {

    @objc(addProgramsObject:)
    @NSManaged public func addToPrograms(_ value: Program)

    @objc(removeProgramsObject:)
    @NSManaged public func removeFromPrograms(_ value: Program)

    @objc(addPrograms:)
    @NSManaged public func addToPrograms(_ values: NSSet)

    @objc(removePrograms:)
    @NSManaged public func removeFromPrograms(_ values: NSSet)

}
