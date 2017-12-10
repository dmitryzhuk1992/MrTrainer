//
//  Program+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 23.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

extension Program {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Program> {
        return NSFetchRequest<Program>(entityName: "Program")
    }

    @NSManaged public var cost: String?
    @NSManaged public var forMuscles: [String]?
    @NSManaged public var identifier: Int16
    @NSManaged public var image: UIImage?
    @NSManaged public var title: String?
    @NSManaged public var exercises: NSSet?

}

// MARK: Generated accessors for exercises
extension Program {

    @objc(addExercisesObject:)
    @NSManaged public func addToExercises(_ value: Exercise)

    @objc(removeExercisesObject:)
    @NSManaged public func removeFromExercises(_ value: Exercise)

    @objc(addExercises:)
    @NSManaged public func addToExercises(_ values: NSSet)

    @objc(removeExercises:)
    @NSManaged public func removeFromExercises(_ values: NSSet)

}
