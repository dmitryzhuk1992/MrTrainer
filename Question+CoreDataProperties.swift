//
//  Question+CoreDataProperties.swift
//  
//
//  Created by Dmitriy Zhuk on 30.11.17.
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
    @NSManaged public var possibleAnswers: NSSet?
    @NSManaged public var userAnswer: UserAnswer?

}

// MARK: Generated accessors for possibleAnswers
extension Question {

    @objc(addPossibleAnswersObject:)
    @NSManaged public func addToPossibleAnswers(_ value: PossibleAnswers)

    @objc(removePossibleAnswersObject:)
    @NSManaged public func removeFromPossibleAnswers(_ value: PossibleAnswers)

    @objc(addPossibleAnswers:)
    @NSManaged public func addToPossibleAnswers(_ values: NSSet)

    @objc(removePossibleAnswers:)
    @NSManaged public func removeFromPossibleAnswers(_ values: NSSet)

}
