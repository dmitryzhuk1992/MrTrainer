//
//  Program+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 21.11.17.
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

    @NSManaged public var title: String?
    @NSManaged public var image: UIImage?
    @NSManaged public var cost: String?
    @NSManaged public var identifier: Int16
    @NSManaged public var exercise: NSSet?

}

// MARK: Generated accessors for exercise
extension Program {

    @objc(addExerciseObject:)
    @NSManaged public func addToExercise(_ value: Exercise)

    @objc(removeExerciseObject:)
    @NSManaged public func removeFromExercise(_ value: Exercise)

    @objc(addExercise:)
    @NSManaged public func addToExercise(_ values: NSSet)

    @objc(removeExercise:)
    @NSManaged public func removeFromExercise(_ values: NSSet)

}
