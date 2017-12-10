//
//  Question+CoreDataProperties.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 07.12.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//
//

import Foundation
import CoreData


extension Question {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Question> {
        return NSFetchRequest<Question>(entityName: "Question")
    }

    @NSManaged public var id: Int16
    @NSManaged public var text: String?
    @NSManaged public var type: String?
    @NSManaged public var possibleAnswers: NSOrderedSet?
    @NSManaged public var userAnswer: UserAnswer?

}

// MARK: Generated accessors for possibleAnswers
extension Question {

    @objc(insertObject:inPossibleAnswersAtIndex:)
    @NSManaged public func insertIntoPossibleAnswers(_ value: PossibleAnswers, at idx: Int)

    @objc(removeObjectFromPossibleAnswersAtIndex:)
    @NSManaged public func removeFromPossibleAnswers(at idx: Int)

    @objc(insertPossibleAnswers:atIndexes:)
    @NSManaged public func insertIntoPossibleAnswers(_ values: [PossibleAnswers], at indexes: NSIndexSet)

    @objc(removePossibleAnswersAtIndexes:)
    @NSManaged public func removeFromPossibleAnswers(at indexes: NSIndexSet)

    @objc(replaceObjectInPossibleAnswersAtIndex:withObject:)
    @NSManaged public func replacePossibleAnswers(at idx: Int, with value: PossibleAnswers)

    @objc(replacePossibleAnswersAtIndexes:withPossibleAnswers:)
    @NSManaged public func replacePossibleAnswers(at indexes: NSIndexSet, with values: [PossibleAnswers])

    @objc(addPossibleAnswersObject:)
    @NSManaged public func addToPossibleAnswers(_ value: PossibleAnswers)

    @objc(removePossibleAnswersObject:)
    @NSManaged public func removeFromPossibleAnswers(_ value: PossibleAnswers)

    @objc(addPossibleAnswers:)
    @NSManaged public func addToPossibleAnswers(_ values: NSOrderedSet)

    @objc(removePossibleAnswers:)
    @NSManaged public func removeFromPossibleAnswers(_ values: NSOrderedSet)

}
