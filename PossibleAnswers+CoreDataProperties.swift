//
//  PossibleAnswers+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 26.11.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData


extension PossibleAnswers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PossibleAnswers> {
        return NSFetchRequest<PossibleAnswers>(entityName: "PossibleAnswers")
    }

    @NSManaged public var answers: [String]?
    @NSManaged public var questionID: NSSet?

}

// MARK: Generated accessors for questionID
extension PossibleAnswers {

    @objc(addQuestionIDObject:)
    @NSManaged public func addToQuestionID(_ value: Question)

    @objc(removeQuestionIDObject:)
    @NSManaged public func removeFromQuestionID(_ value: Question)

    @objc(addQuestionID:)
    @NSManaged public func addToQuestionID(_ values: NSSet)

    @objc(removeQuestionID:)
    @NSManaged public func removeFromQuestionID(_ values: NSSet)

}
