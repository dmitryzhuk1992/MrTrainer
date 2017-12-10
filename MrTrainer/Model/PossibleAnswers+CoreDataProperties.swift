//
//  PossibleAnswers+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 07.12.17.
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
    @NSManaged public var questionID: NSOrderedSet?

}

// MARK: Generated accessors for questionID
extension PossibleAnswers {

    @objc(insertObject:inQuestionIDAtIndex:)
    @NSManaged public func insertIntoQuestionID(_ value: Question, at idx: Int)

    @objc(removeObjectFromQuestionIDAtIndex:)
    @NSManaged public func removeFromQuestionID(at idx: Int)

    @objc(insertQuestionID:atIndexes:)
    @NSManaged public func insertIntoQuestionID(_ values: [Question], at indexes: NSIndexSet)

    @objc(removeQuestionIDAtIndexes:)
    @NSManaged public func removeFromQuestionID(at indexes: NSIndexSet)

    @objc(replaceObjectInQuestionIDAtIndex:withObject:)
    @NSManaged public func replaceQuestionID(at idx: Int, with value: Question)

    @objc(replaceQuestionIDAtIndexes:withQuestionID:)
    @NSManaged public func replaceQuestionID(at indexes: NSIndexSet, with values: [Question])

    @objc(addQuestionIDObject:)
    @NSManaged public func addToQuestionID(_ value: Question)

    @objc(removeQuestionIDObject:)
    @NSManaged public func removeFromQuestionID(_ value: Question)

    @objc(addQuestionID:)
    @NSManaged public func addToQuestionID(_ values: NSOrderedSet)

    @objc(removeQuestionID:)
    @NSManaged public func removeFromQuestionID(_ values: NSOrderedSet)

}
