//
//  Data.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 30.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import Foundation
import UIKit

func initSurvey()  {
    
    let answersToTheFirstQue: PossibleAnswers = PossibleAnswers()
    answersToTheFirstQue.answers = ["Мужчина","Женщина"]
    
    let firstQuestion: Question = Question()
    firstQuestion.id = 0
    firstQuestion.text = "Ваш пол?"
    firstQuestion.addToPossibleAnswers(answersToTheFirstQue)
    
    let answersToTheSecondQue: PossibleAnswers = PossibleAnswers()
    answersToTheSecondQue.answers = ["до 16","16...25","25...40","за 40"]
    
    let secondQuestion: Question = Question()
    secondQuestion.id = 1
    secondQuestion.text = "Ваш возраст?"
    secondQuestion.addToPossibleAnswers(answersToTheSecondQue)
    
    let answersToTheThirdQue: PossibleAnswers = PossibleAnswers()
    answersToTheThirdQue.answers = ["менее 50","50...70","70...90","более 90"]
    
    let thirdQuestion: Question = Question()
    thirdQuestion.id = 2
    thirdQuestion.text = "Ваш вес?"
    thirdQuestion.addToPossibleAnswers(answersToTheThirdQue)
    
    let answersToTheFourthQue: PossibleAnswers = PossibleAnswers()
    answersToTheFourthQue.answers = ["ниже 160","160...170","170...190","выше 190"]
    
    let fourthQuestion: Question = Question()
    fourthQuestion.id = 3
    fourthQuestion.text = "Ваш рост?"
    fourthQuestion.addToPossibleAnswers(answersToTheFourthQue)
    
    let answersToTheFifthQue: PossibleAnswers = PossibleAnswers()
    answersToTheFifthQue.answers = ["Худое","Среднее","Полное","Мускулистое"]
    
    let fifthQuestion: Question = Question()
    fifthQuestion.id = 4
    fifthQuestion.text = "Ваше телосложение?"
    fifthQuestion.addToPossibleAnswers(answersToTheFifthQue)
    
    let answersToTheSixthQue: PossibleAnswers = PossibleAnswers()
    answersToTheSixthQue.answers = ["Начинающий","Ранее тренировался","Иногда тренируюсь","Спортсмен"]
    
    let sixthQuestion: Question = Question()
    sixthQuestion.id = 5
    sixthQuestion.text = "Стаж тренировок?"
    sixthQuestion.addToPossibleAnswers(answersToTheSixthQue)
    
    let answersToTheSeventhQue: PossibleAnswers = PossibleAnswers()
    answersToTheSeventhQue.answers = ["Низкий","Средний","Высокий"]
    
    let seventhQuestion: Question = Question()
    seventhQuestion.id = 6
    seventhQuestion.text = "Ваш уровень активности?"
    seventhQuestion.addToPossibleAnswers(answersToTheSeventhQue)
    
    let answersToTheEighthQue: PossibleAnswers = PossibleAnswers()
    answersToTheEighthQue.answers = ["Полностью здоров","Большие нагрузки нежелательны","Любые нагрузки нежелательны"]
    
    let eighthQuestion: Question = Question()
    eighthQuestion.id = 7
    eighthQuestion.text = "Ваше здоровье?"
    eighthQuestion.addToPossibleAnswers(answersToTheEighthQue)
    
    let answersToTheNinthQue: PossibleAnswers = PossibleAnswers()
    answersToTheNinthQue.answers = ["Похудеть","Увеличить рельеф","Набрать массу","Увеличить силу"]
    
    let ninthQuestion: Question = Question()
    ninthQuestion.id = 7
    ninthQuestion.text = "Ваша цель?"
    ninthQuestion.addToPossibleAnswers(answersToTheNinthQue)

}

func initData() {
    
    //эллиптический тренажёр
    let ellipticalMachine: Exercise = Exercise()
    ellipticalMachine.identifier = 0
    ellipticalMachine.title = "Elliptical Machine"
    ellipticalMachine.difficulty = "medium"
    ellipticalMachine.muscles = ["quads","middle back"]
    ellipticalMachine.thumbnails = [#imageLiteral(resourceName: "ellips_0"),#imageLiteral(resourceName: "ellips_1"),#imageLiteral(resourceName: "ellips_2"),#imageLiteral(resourceName: "ellips_3"),#imageLiteral(resourceName: "ellips_4"),#imageLiteral(resourceName: "ellips_5"),#imageLiteral(resourceName: "ellips_6"),#imageLiteral(resourceName: "ellips_7"),#imageLiteral(resourceName: "ellips_8"),#imageLiteral(resourceName: "ellips_9"),#imageLiteral(resourceName: "ellips_10"),#imageLiteral(resourceName: "ellips_11")]
    ellipticalMachine.images = [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")]
    ellipticalMachine.duration = 1.4
    ellipticalMachine.isFavourite = false
    ellipticalMachine.text = ["1. This is the text for 1 exercise! 1 str.",
                              "2. This is the text for 1 exercise! 2 str.",
                              "3. This is the text for 1 exercise! 3 str.",
                              "4. This is the text for 1 exercise! 4 str."]
    
    //велотренажёр
    let bikeMachine: Exercise = Exercise()
    bikeMachine.identifier = 1
    bikeMachine.title = "Exercise Bikes"
    bikeMachine.difficulty = "easy"
    bikeMachine.muscles = ["quads"]
    bikeMachine.thumbnails = [#imageLiteral(resourceName: "bike_0"),#imageLiteral(resourceName: "bike_1"),#imageLiteral(resourceName: "bike_2"),#imageLiteral(resourceName: "bike_3"),#imageLiteral(resourceName: "bike_4"),#imageLiteral(resourceName: "bike_5"),#imageLiteral(resourceName: "bike_6"),#imageLiteral(resourceName: "bike_7"),#imageLiteral(resourceName: "bike_8"),#imageLiteral(resourceName: "bike_9"),#imageLiteral(resourceName: "bike_10"),#imageLiteral(resourceName: "bike_11")]
    bikeMachine.images = [#imageLiteral(resourceName: "bikeBig_0"),#imageLiteral(resourceName: "bikeBig_1"),#imageLiteral(resourceName: "bikeBig_2"),#imageLiteral(resourceName: "bikeBig_3"),#imageLiteral(resourceName: "bikeBig_4"),#imageLiteral(resourceName: "bikeBig_5"),#imageLiteral(resourceName: "bikeBig_6"),#imageLiteral(resourceName: "bikeBig_7"),#imageLiteral(resourceName: "bikeBig_8"),#imageLiteral(resourceName: "bikeBig_9"),#imageLiteral(resourceName: "bikeBig_10"),#imageLiteral(resourceName: "bikeBig_11")]
    bikeMachine.duration = 1.2
    bikeMachine.isFavourite = false
    bikeMachine.text = ["1. This is the text for 2 exercise! 1 str.",
                        "2. This is the text for 2 exercise! 2 str.",
                        "3. This is the text for 2 exercise! 3 str.",
                        "4. This is the text for 2 exercise! 4 str."]
    
    //беговая дорожка
    let runningMachine: Exercise = Exercise()
    runningMachine.identifier = 2
    runningMachine.title = "Running Machine"
    runningMachine.difficulty = "easy"
    runningMachine.muscles = ["quads"]
    runningMachine.thumbnails = [#imageLiteral(resourceName: "running_0"),#imageLiteral(resourceName: "running_1"),#imageLiteral(resourceName: "running_2"),#imageLiteral(resourceName: "running_3"),#imageLiteral(resourceName: "running_4"),#imageLiteral(resourceName: "running_5"),#imageLiteral(resourceName: "running_6"),#imageLiteral(resourceName: "running_7"),#imageLiteral(resourceName: "running_8"),#imageLiteral(resourceName: "running_9"),#imageLiteral(resourceName: "running_10")]
    runningMachine.images = [#imageLiteral(resourceName: "runningBig_0"),#imageLiteral(resourceName: "runningBig_1"),#imageLiteral(resourceName: "runningBig_2"),#imageLiteral(resourceName: "runningBig_3"),#imageLiteral(resourceName: "runningBig_4"),#imageLiteral(resourceName: "runningBig_5"),#imageLiteral(resourceName: "runningBig_6"),#imageLiteral(resourceName: "runningBig_7"),#imageLiteral(resourceName: "runningBig_8"),#imageLiteral(resourceName: "runningBig_9"),#imageLiteral(resourceName: "runningBig_10")]
    runningMachine.duration = 0.8
    runningMachine.isFavourite = false
    runningMachine.text = ["1. This is the text for 3 exercise! 1 str.",
                           "2. This is the text for 3 exercise! 2 str.",
                           "3. This is the text for 3 exercise! 3 str.",
                           "4. This is the text for 3 exercise! 4 str."]
    
    //тяга верхнего блока за голову
    let behindTheNeck: Exercise = Exercise()
    behindTheNeck.identifier = 3
    behindTheNeck.title = "Behind the Neck Lat Pulldown"
    behindTheNeck.difficulty = "easy"
    behindTheNeck.muscles = ["lats"]
    behindTheNeck.thumbnails = [#imageLiteral(resourceName: "behindTheNeck_0"),#imageLiteral(resourceName: "behindTheNeck_1"),#imageLiteral(resourceName: "behindTheNeck_2"),#imageLiteral(resourceName: "behindTheNeck_3"),#imageLiteral(resourceName: "behindTheNeck_4"),#imageLiteral(resourceName: "behindTheNeck_5"),#imageLiteral(resourceName: "behindTheNeck_6"),#imageLiteral(resourceName: "behindTheNeck_7"),#imageLiteral(resourceName: "behindTheNeck_8"),#imageLiteral(resourceName: "behindTheNeck_9"),#imageLiteral(resourceName: "behindTheNeck_10"),#imageLiteral(resourceName: "behindTheNeck_11")]
    behindTheNeck.images = [#imageLiteral(resourceName: "behindTheNeckBig_0"),#imageLiteral(resourceName: "behindTheNeckBig_1"),#imageLiteral(resourceName: "behindTheNeckBig_2"),#imageLiteral(resourceName: "behindTheNeckBig_3"),#imageLiteral(resourceName: "behindTheNeckBig_4"),#imageLiteral(resourceName: "behindTheNeckBig_5"),#imageLiteral(resourceName: "behindTheNeckBig_6"),#imageLiteral(resourceName: "behindTheNeckBig_7"),#imageLiteral(resourceName: "behindTheNeckBig_8"),#imageLiteral(resourceName: "behindTheNeckBig_9"),#imageLiteral(resourceName: "behindTheNeckBig_10"),#imageLiteral(resourceName: "behindTheNeckBig_11")]
    behindTheNeck.duration = 1.5
    behindTheNeck.isFavourite = false
    behindTheNeck.text = ["1. This is the text for 4 exercise! 1 str.",
                          "2. This is the text for 4 exercise! 2 str.",
                          "3. This is the text for 4 exercise! 3 str.",
                          "4. This is the text for 4 exercise! 4 str."]
    
    //тяга штанги в наклоне
    let bentOver: Exercise = Exercise()
    bentOver.identifier = 4
    bentOver.title = "Bent Over Barbell Row"
    bentOver.difficulty = "easy"
    bentOver.muscles = ["middle back"]
    bentOver.thumbnails = [#imageLiteral(resourceName: "bent_0"),#imageLiteral(resourceName: "bent_1"),#imageLiteral(resourceName: "bent_2"),#imageLiteral(resourceName: "bent_3"),#imageLiteral(resourceName: "bent_4"),#imageLiteral(resourceName: "bent_5"),#imageLiteral(resourceName: "bent_6"),#imageLiteral(resourceName: "bent_7"),#imageLiteral(resourceName: "bent_8"),#imageLiteral(resourceName: "bent_9"),#imageLiteral(resourceName: "bent_10"),#imageLiteral(resourceName: "bent_11")]
    bentOver.images = [#imageLiteral(resourceName: "bentBig_0"),#imageLiteral(resourceName: "bentBig_1"),#imageLiteral(resourceName: "bentBig_2"),#imageLiteral(resourceName: "bentBig_3"),#imageLiteral(resourceName: "bentBig_4"),#imageLiteral(resourceName: "bentBig_5"),#imageLiteral(resourceName: "bentBig_6"),#imageLiteral(resourceName: "bentBig_7"),#imageLiteral(resourceName: "bentBig_8"),#imageLiteral(resourceName: "bentBig_9")]
    bentOver.duration = 1.6
    bentOver.isFavourite = false
    bentOver.text = ["1. This is the text for 5 exercise! 1 str.",
                     "2. This is the text for 5 exercise! 2 str.",
                     "3. This is the text for 5 exercise! 3 str.",
                     "4. This is the text for 5 exercise! 4 str."]
    
    //становая тяга
    let deadlift: Exercise = Exercise()
    deadlift.identifier = 5
    deadlift.title = "Deadlift"
    deadlift.difficulty = "medium"
    deadlift.muscles = ["quads"]
    deadlift.thumbnails = [#imageLiteral(resourceName: "deadlift_0"),#imageLiteral(resourceName: "deadlift_1"),#imageLiteral(resourceName: "deadlift_2"),#imageLiteral(resourceName: "deadlift_3"),#imageLiteral(resourceName: "deadlift_4"),#imageLiteral(resourceName: "deadlift_5"),#imageLiteral(resourceName: "deadlift_6"),#imageLiteral(resourceName: "deadlift_7"),#imageLiteral(resourceName: "deadlift_8"),#imageLiteral(resourceName: "deadlift_9"),#imageLiteral(resourceName: "deadlift_10"),#imageLiteral(resourceName: "deadlift_11")]
    deadlift.images = [#imageLiteral(resourceName: "deadliftBig_0"),#imageLiteral(resourceName: "deadliftBig_1"),#imageLiteral(resourceName: "deadliftBig_2"),#imageLiteral(resourceName: "deadliftBig_3"),#imageLiteral(resourceName: "deadliftBig_4"),#imageLiteral(resourceName: "deadliftBig_5"),#imageLiteral(resourceName: "deadliftBig_6"),#imageLiteral(resourceName: "deadliftBig_7"),#imageLiteral(resourceName: "deadliftBig_8"),#imageLiteral(resourceName: "deadliftBig_9"),#imageLiteral(resourceName: "deadliftBig_10"),#imageLiteral(resourceName: "deadliftBig_11")]
    deadlift.duration = 1.6
    deadlift.isFavourite = false
    deadlift.text = ["1. This is the text for 1 exercise! 1 str.",
                     "2. This is the text for 1 exercise! 2 str.",
                     "3. This is the text for 1 exercise! 3 str.",
                     "4. This is the text for 1 exercise! 4 str."]
    
    //подтягивания
    let pullUp: Exercise = Exercise()
    pullUp.identifier = 6
    pullUp.title = "Pull Up"
    pullUp.difficulty = "medium"
    pullUp.muscles = ["lats"]
    pullUp.thumbnails = [#imageLiteral(resourceName: "pullUp_0"),#imageLiteral(resourceName: "pullUp_1"),#imageLiteral(resourceName: "pullUp_2"),#imageLiteral(resourceName: "pullUp_3"),#imageLiteral(resourceName: "pullUp_4"),#imageLiteral(resourceName: "pullUp_5"),#imageLiteral(resourceName: "pullUp_6"),#imageLiteral(resourceName: "pullUp_7"),#imageLiteral(resourceName: "pullUp_8"),#imageLiteral(resourceName: "pullUp_9"),#imageLiteral(resourceName: "pullUp_10"),#imageLiteral(resourceName: "pullUp_11")]
    pullUp.images = [#imageLiteral(resourceName: "pullUpBig_0"),#imageLiteral(resourceName: "pullUpBig_1"),#imageLiteral(resourceName: "pullUpBig_2"),#imageLiteral(resourceName: "pullUpBig_3"),#imageLiteral(resourceName: "pullUpBig_4"),#imageLiteral(resourceName: "pullUpBig_5"),#imageLiteral(resourceName: "pullUpBig_6"),#imageLiteral(resourceName: "pullUpBig_7"),#imageLiteral(resourceName: "pullUpBig_8"),#imageLiteral(resourceName: "pullUpBig_9"),#imageLiteral(resourceName: "pullUpBig_10"),#imageLiteral(resourceName: "pullUpBig_11")]
    pullUp.duration = 1.5
    pullUp.isFavourite = false
    pullUp.text = ["1. This is the text for 1 exercise! 1 str.",
                   "2. This is the text for 1 exercise! 2 str.",
                   "3. This is the text for 1 exercise! 3 str.",
                   "4. This is the text for 1 exercise! 4 str."]
    
    //жим штанги из-за головы в машине Смита
    let behindPress: Exercise = Exercise()
    behindPress.identifier = 7
    behindPress.title = "Behind the Neck Press"
    behindPress.difficulty = "easy"
    behindPress.muscles = ["shoulders"]
    behindPress.thumbnails = [#imageLiteral(resourceName: "behindPress_0"),#imageLiteral(resourceName: "behindPress_1"),#imageLiteral(resourceName: "behindPress_2"),#imageLiteral(resourceName: "behindPress_3"),#imageLiteral(resourceName: "behindPress_4"),#imageLiteral(resourceName: "behindPress_5"),#imageLiteral(resourceName: "behindPress_6"),#imageLiteral(resourceName: "behindPress_7"),#imageLiteral(resourceName: "behindPress_8"),#imageLiteral(resourceName: "behindPress_9"),#imageLiteral(resourceName: "behindPress_10"),#imageLiteral(resourceName: "behindPress_11")]
    behindPress.images = [#imageLiteral(resourceName: "behindPressBig_0"),#imageLiteral(resourceName: "behindPressBig_1"),#imageLiteral(resourceName: "behindPressBig_2"),#imageLiteral(resourceName: "behindPressBig_3"),#imageLiteral(resourceName: "behindPressBig_4"),#imageLiteral(resourceName: "behindPressBig_5"),#imageLiteral(resourceName: "behindPressBig_6"),#imageLiteral(resourceName: "behindPressBig_7"),#imageLiteral(resourceName: "behindPressBig_8"),#imageLiteral(resourceName: "behindPressBig_9"),#imageLiteral(resourceName: "behindPressBig_10"),#imageLiteral(resourceName: "behindPressBig_11")]
    behindPress.duration = 1.5
    behindPress.isFavourite = false
    behindPress.text = ["1. This is the text for 1 exercise! 1 str.",
                        "2. This is the text for 1 exercise! 2 str.",
                        "3. This is the text for 1 exercise! 3 str.",
                        "4. This is the text for 1 exercise! 4 str."]
    
    //разведение рук с гантелями в стороны
    let dumbbell: Exercise = Exercise()
    dumbbell.identifier = 8
    dumbbell.title = "Dumbbell Side Raise"
    dumbbell.difficulty = "easy"
    dumbbell.muscles = ["shoulders"]
    dumbbell.thumbnails = [#imageLiteral(resourceName: "dumbbell_0"),#imageLiteral(resourceName: "dumbbell_1"),#imageLiteral(resourceName: "dumbbell_2"),#imageLiteral(resourceName: "dumbbell_3"),#imageLiteral(resourceName: "dumbbell_4"),#imageLiteral(resourceName: "dumbbell_5"),#imageLiteral(resourceName: "dumbbell_6"),#imageLiteral(resourceName: "dumbbell_7"),#imageLiteral(resourceName: "dumbbell_8"),#imageLiteral(resourceName: "dumbbell_9"),#imageLiteral(resourceName: "dumbbell_10"),#imageLiteral(resourceName: "dumbbell_11")]
    dumbbell.images = [#imageLiteral(resourceName: "dumbbellBig_0"),#imageLiteral(resourceName: "dumbbellBig_1"),#imageLiteral(resourceName: "dumbbellBig_2"),#imageLiteral(resourceName: "dumbbellBig_3"),#imageLiteral(resourceName: "dumbbellBig_4"),#imageLiteral(resourceName: "dumbbellBig_5"),#imageLiteral(resourceName: "dumbbellBig_6"),#imageLiteral(resourceName: "dumbbellBig_7"),#imageLiteral(resourceName: "dumbbellBig_8"),#imageLiteral(resourceName: "dumbbellBig_9"),#imageLiteral(resourceName: "dumbbellBig_10"),#imageLiteral(resourceName: "dumbbellBig_11")]
    dumbbell.duration = 1.7
    dumbbell.isFavourite = false
    dumbbell.text = ["1. This is the text for 1 exercise! 1 str.",
                     "2. This is the text for 1 exercise! 2 str.",
                     "3. This is the text for 1 exercise! 3 str.",
                     "4. This is the text for 1 exercise! 4 str."]
    
    //армейский жим стоя
    let overhead: Exercise = Exercise()
    overhead.identifier = 9
    overhead.title = "Overhead Barbell Press"
    overhead.difficulty = "hard"
    overhead.muscles = ["shoulders"]
    overhead.thumbnails = [#imageLiteral(resourceName: "overhead_0"),#imageLiteral(resourceName: "overhead_1"),#imageLiteral(resourceName: "overhead_2"),#imageLiteral(resourceName: "overhead_3"),#imageLiteral(resourceName: "overhead_4"),#imageLiteral(resourceName: "overhead_5"),#imageLiteral(resourceName: "overhead_6"),#imageLiteral(resourceName: "overhead_7"),#imageLiteral(resourceName: "overhead_8"),#imageLiteral(resourceName: "overhead_9"),#imageLiteral(resourceName: "overhead_10")]
    overhead.images = [#imageLiteral(resourceName: "overheadBig_0"),#imageLiteral(resourceName: "overheadBig_1"),#imageLiteral(resourceName: "overheadBig_2"),#imageLiteral(resourceName: "overheadBig_3"),#imageLiteral(resourceName: "overheadBig_4"),#imageLiteral(resourceName: "overheadBig_5"),#imageLiteral(resourceName: "overheadBig_6"),#imageLiteral(resourceName: "overheadBig_7"),#imageLiteral(resourceName: "overheadBig_8"),#imageLiteral(resourceName: "overheadBig_9"),#imageLiteral(resourceName: "overheadBig_10")]
    overhead.duration = 1.5
    overhead.isFavourite = false
    overhead.text = ["1. This is the text for 1 exercise! 1 str.",
                     "2. This is the text for 1 exercise! 2 str.",
                     "3. This is the text for 1 exercise! 3 str.",
                     "4. This is the text for 1 exercise! 4 str."]
    
    //вертикальная тяга штанги
    let rearUpright: Exercise = Exercise()
    rearUpright.identifier = 10
    rearUpright.title = "Rear Upright Row"
    rearUpright.difficulty = "easy"
    rearUpright.muscles = ["shoulders"]
    rearUpright.thumbnails = [#imageLiteral(resourceName: "rearUpright_0"),#imageLiteral(resourceName: "rearUpright_1"),#imageLiteral(resourceName: "rearUpright_2"),#imageLiteral(resourceName: "rearUpright_3"),#imageLiteral(resourceName: "rearUpright_4"),#imageLiteral(resourceName: "rearUpright_5"),#imageLiteral(resourceName: "rearUpright_6"),#imageLiteral(resourceName: "rearUpright_7"),#imageLiteral(resourceName: "rearUpright_8"),#imageLiteral(resourceName: "rearUpright_9"),#imageLiteral(resourceName: "rearUpright_10"),#imageLiteral(resourceName: "rearUpright_11")]
    rearUpright.images = [#imageLiteral(resourceName: "rearUprightBig_0"),#imageLiteral(resourceName: "rearUprightBig_1"),#imageLiteral(resourceName: "rearUprightBig_2"),#imageLiteral(resourceName: "rearUprightBig_3"),#imageLiteral(resourceName: "rearUprightBig_4"),#imageLiteral(resourceName: "rearUprightBig_5"),#imageLiteral(resourceName: "rearUprightBig_6"),#imageLiteral(resourceName: "rearUprightBig_7"),#imageLiteral(resourceName: "rearUprightBig_8"),#imageLiteral(resourceName: "rearUprightBig_9"),#imageLiteral(resourceName: "rearUprightBig_10"),#imageLiteral(resourceName: "rearUprightBig_11")]
    rearUpright.duration = 1.5
    rearUpright.isFavourite = false
    rearUpright.text = ["1. This is the text for 1 exercise! 1 str.",
                        "2. This is the text for 1 exercise! 2 str.",
                        "3. This is the text for 1 exercise! 3 str.",
                        "4. This is the text for 1 exercise! 4 str."]
    
    //приседания со штангой
    let barbellSquat: Exercise = Exercise()
    barbellSquat.identifier = 11
    barbellSquat.title = "Barbell Squat"
    barbellSquat.difficulty = "medium"
    barbellSquat.muscles = ["quads"]
    barbellSquat.thumbnails = [#imageLiteral(resourceName: "barbellSquart_0"),#imageLiteral(resourceName: "barbellSquart_1"),#imageLiteral(resourceName: "barbellSquart_2"),#imageLiteral(resourceName: "barbellSquart_3"),#imageLiteral(resourceName: "barbellSquart_4"),#imageLiteral(resourceName: "barbellSquart_5"),#imageLiteral(resourceName: "barbellSquart_6"),#imageLiteral(resourceName: "barbellSquart_7"),#imageLiteral(resourceName: "barbellSquart_8"),#imageLiteral(resourceName: "barbellSquart_9"),#imageLiteral(resourceName: "barbellSquart_10"),#imageLiteral(resourceName: "barbellSquart_11")]
    barbellSquat.images = [#imageLiteral(resourceName: "barbellSquatBig_0"),#imageLiteral(resourceName: "barbellSquatBig_1"),#imageLiteral(resourceName: "barbellSquatBig_2"),#imageLiteral(resourceName: "barbellSquatBig_3"),#imageLiteral(resourceName: "barbellSquatBig_4"),#imageLiteral(resourceName: "barbellSquatBig_5"),#imageLiteral(resourceName: "barbellSquatBig_6"),#imageLiteral(resourceName: "barbellSquatBig_7"),#imageLiteral(resourceName: "barbellSquatBig_8"),#imageLiteral(resourceName: "barbellSquatBig_9"),#imageLiteral(resourceName: "barbellSquatBig_10"),#imageLiteral(resourceName: "barbellSquatBig_11")]
    barbellSquat.duration = 1.5
    barbellSquat.isFavourite = false
    barbellSquat.text = ["1. This is the text for 1 exercise! 1 str.",
                         "2. This is the text for 1 exercise! 2 str.",
                         "3. This is the text for 1 exercise! 3 str.",
                         "4. This is the text for 1 exercise! 4 str."]
    
    //жим ногами
    let legPress: Exercise = Exercise()
    legPress.identifier = 12
    legPress.title = "Leg Press"
    legPress.difficulty = "easy"
    legPress.muscles = ["quads"]
    legPress.thumbnails = [#imageLiteral(resourceName: "legPress_0"),#imageLiteral(resourceName: "legPress_1"),#imageLiteral(resourceName: "legPress_2"),#imageLiteral(resourceName: "legPress_3"),#imageLiteral(resourceName: "legPress_4"),#imageLiteral(resourceName: "legPress_5"),#imageLiteral(resourceName: "legPress_6"),#imageLiteral(resourceName: "legPress_7"),#imageLiteral(resourceName: "legPress_8"),#imageLiteral(resourceName: "legPress_9"),#imageLiteral(resourceName: "legPress_10")]
    legPress.images = [#imageLiteral(resourceName: "legPressBig_0"),#imageLiteral(resourceName: "legPressBig_1"),#imageLiteral(resourceName: "legPressBig_2"),#imageLiteral(resourceName: "legPressBig_3"),#imageLiteral(resourceName: "legPressBig_4"),#imageLiteral(resourceName: "legPressBig_5"),#imageLiteral(resourceName: "legPressBig_6"),#imageLiteral(resourceName: "legPressBig_7"),#imageLiteral(resourceName: "legPressBig_8"),#imageLiteral(resourceName: "legPressBig_9"),#imageLiteral(resourceName: "legPressBig_10")]
    legPress.duration = 1.5
    legPress.isFavourite = false
    legPress.text = ["1. This is the text for 1 exercise! 1 str.",
                     "2. This is the text for 1 exercise! 2 str.",
                     "3. This is the text for 1 exercise! 3 str.",
                     "4. This is the text for 1 exercise! 4 str."]
    
    //жим лёжа на скамье
    let benchPress: Exercise = Exercise()
    benchPress.identifier = 13
    benchPress.title = "Bench Press"
    benchPress.difficulty = "medium"
    benchPress.muscles = ["chest"]
    benchPress.thumbnails = [#imageLiteral(resourceName: "benchPress_0"),#imageLiteral(resourceName: "benchPress_1"),#imageLiteral(resourceName: "benchPress_2"),#imageLiteral(resourceName: "benchPress_3"),#imageLiteral(resourceName: "benchPress_4"),#imageLiteral(resourceName: "benchPress_5"),#imageLiteral(resourceName: "benchPress_6"),#imageLiteral(resourceName: "benchPress_7"),#imageLiteral(resourceName: "benchPress_8"),#imageLiteral(resourceName: "benchPress_9")]
    benchPress.images = [#imageLiteral(resourceName: "benchPressBig_0"),#imageLiteral(resourceName: "benchPressBig_1"),#imageLiteral(resourceName: "benchPressBig_2"),#imageLiteral(resourceName: "benchPressBig_3"),#imageLiteral(resourceName: "benchPressBig_4"),#imageLiteral(resourceName: "benchPressBig_5"),#imageLiteral(resourceName: "benchPressBig_6"),#imageLiteral(resourceName: "benchPressBig_7"),#imageLiteral(resourceName: "benchPressBig_8"),#imageLiteral(resourceName: "benchPressBig_9")]
    benchPress.duration = 1.5
    benchPress.isFavourite = false
    benchPress.text = ["1. This is the text for 1 exercise! 1 str.",
                       "2. This is the text for 1 exercise! 2 str.",
                       "3. This is the text for 1 exercise! 3 str.",
                       "4. This is the text for 1 exercise! 4 str."]
    
    //сведение рук в кроссовере
    let cableCrossover: Exercise = Exercise()
    cableCrossover.identifier = 14
    cableCrossover.title = "Cable Crossover"
    cableCrossover.difficulty = "easy"
    cableCrossover.muscles = ["chest"]
    cableCrossover.thumbnails = [#imageLiteral(resourceName: "cableCrossover_0"),#imageLiteral(resourceName: "cableCrossover_1"),#imageLiteral(resourceName: "cableCrossover_2"),#imageLiteral(resourceName: "cableCrossover_3"),#imageLiteral(resourceName: "cableCrossover_4"),#imageLiteral(resourceName: "cableCrossover_5"),#imageLiteral(resourceName: "cableCrossover_6"),#imageLiteral(resourceName: "cableCrossover_7"),#imageLiteral(resourceName: "cableCrossover_8"),#imageLiteral(resourceName: "cableCrossover_9"),#imageLiteral(resourceName: "cableCrossover_10"),#imageLiteral(resourceName: "cableCrossover_11")]
    cableCrossover.images = [#imageLiteral(resourceName: "cableCrossoverBig_0"),#imageLiteral(resourceName: "cableCrossoverBig_1"),#imageLiteral(resourceName: "cableCrossoverBig_2"),#imageLiteral(resourceName: "cableCrossoverBig_3"),#imageLiteral(resourceName: "cableCrossoverBig_4"),#imageLiteral(resourceName: "cableCrossoverBig_5"),#imageLiteral(resourceName: "cableCrossoverBig_6"),#imageLiteral(resourceName: "cableCrossoverBig_7"),#imageLiteral(resourceName: "cableCrossoverBig_8"),#imageLiteral(resourceName: "cableCrossoverBig_9"),#imageLiteral(resourceName: "cableCrossoverBig_10"),#imageLiteral(resourceName: "cableCrossoverBig_11")]
    cableCrossover.duration = 1.5
    cableCrossover.isFavourite = false
    cableCrossover.text = ["1. This is the text for 1 exercise! 1 str.",
                           "2. This is the text for 1 exercise! 2 str.",
                           "3. This is the text for 1 exercise! 3 str.",
                           "4. This is the text for 1 exercise! 4 str."]
    
    //отжимания на брусьях
    let dips: Exercise = Exercise()
    dips.identifier = 15
    dips.title = "Dips"
    dips.difficulty = "easy"
    dips.muscles = ["triceps"]
    dips.thumbnails = [#imageLiteral(resourceName: "dips_0"),#imageLiteral(resourceName: "dips_1"),#imageLiteral(resourceName: "dips_2"),#imageLiteral(resourceName: "dips_3"),#imageLiteral(resourceName: "dips_4"),#imageLiteral(resourceName: "dips_5"),#imageLiteral(resourceName: "dips_6"),#imageLiteral(resourceName: "dips_7"),#imageLiteral(resourceName: "dips_8"),#imageLiteral(resourceName: "dips_9")]
    dips.images = [#imageLiteral(resourceName: "dipsBig_0"),#imageLiteral(resourceName: "dipsBig_1"),#imageLiteral(resourceName: "dipsBig_2"),#imageLiteral(resourceName: "dipsBig_3"),#imageLiteral(resourceName: "dipsBig_4"),#imageLiteral(resourceName: "dipsBig_5"),#imageLiteral(resourceName: "dipsBig_6"),#imageLiteral(resourceName: "dipsBig_7"),#imageLiteral(resourceName: "dipsBig_8"),#imageLiteral(resourceName: "dipsBig_9")]
    dips.duration = 1.5
    dips.isFavourite = false
    dips.text = ["1. This is the text for 1 exercise! 1 str.",
                 "2. This is the text for 1 exercise! 2 str.",
                 "3. This is the text for 1 exercise! 3 str.",
                 "4. This is the text for 1 exercise! 4 str."]
    
    //подъём туловища на наклонной скамье
    let inclineSitUp: Exercise = Exercise()
    inclineSitUp.identifier = 16
    inclineSitUp.title = "Incline Sit-Up"
    inclineSitUp.difficulty = "easy"
    inclineSitUp.muscles = ["press"]
    inclineSitUp.thumbnails = [#imageLiteral(resourceName: "inclineSitUp_0"),#imageLiteral(resourceName: "inclineSitUp_1"),#imageLiteral(resourceName: "inclineSitUp_2"),#imageLiteral(resourceName: "inclineSitUp_3"),#imageLiteral(resourceName: "inclineSitUp_4"),#imageLiteral(resourceName: "inclineSitUp_5"),#imageLiteral(resourceName: "inclineSitUp_6"),#imageLiteral(resourceName: "inclineSitUp_7"),#imageLiteral(resourceName: "inclineSitUp_8"),#imageLiteral(resourceName: "inclineSitUp_9"),#imageLiteral(resourceName: "inclineSitUp_10"),#imageLiteral(resourceName: "inclineSitUp_11")]
    inclineSitUp.images = [#imageLiteral(resourceName: "inclineSitUpBig_0"),#imageLiteral(resourceName: "inclineSitUpBig_1"),#imageLiteral(resourceName: "inclineSitUpBig_2"),#imageLiteral(resourceName: "inclineSitUpBig_3"),#imageLiteral(resourceName: "inclineSitUpBig_4"),#imageLiteral(resourceName: "inclineSitUpBig_5"),#imageLiteral(resourceName: "inclineSitUpBig_6"),#imageLiteral(resourceName: "inclineSitUpBig_7"),#imageLiteral(resourceName: "inclineSitUpBig_8"),#imageLiteral(resourceName: "inclineSitUpBig_9"),#imageLiteral(resourceName: "inclineSitUpBig_10"),#imageLiteral(resourceName: "inclineSitUpBig_11")]
    inclineSitUp.duration = 1.6
    inclineSitUp.isFavourite = false
    inclineSitUp.text = ["1. This is the text for 1 exercise! 1 str.",
                         "2. This is the text for 1 exercise! 2 str.",
                         "3. This is the text for 1 exercise! 3 str.",
                         "4. This is the text for 1 exercise! 4 str."]
    
    //подъём ног в тренажёре
    let kneeRaise: Exercise = Exercise()
    kneeRaise.identifier = 17
    kneeRaise.title = "Knee Raise On Parallel Bars"
    kneeRaise.difficulty = "easy"
    kneeRaise.muscles = ["press"]
    kneeRaise.thumbnails = [#imageLiteral(resourceName: "kneeRaise_0"),#imageLiteral(resourceName: "kneeRaise_1"),#imageLiteral(resourceName: "kneeRaise_2"),#imageLiteral(resourceName: "kneeRaise_3"),#imageLiteral(resourceName: "kneeRaise_4"),#imageLiteral(resourceName: "kneeRaise_5"),#imageLiteral(resourceName: "kneeRaise_6"),#imageLiteral(resourceName: "kneeRaise_7"),#imageLiteral(resourceName: "kneeRaise_8"),#imageLiteral(resourceName: "kneeRaise_9"),#imageLiteral(resourceName: "kneeRaise_10"),#imageLiteral(resourceName: "kneeRaise_11")]
    kneeRaise.images = [#imageLiteral(resourceName: "kneeRaiseBig_0"),#imageLiteral(resourceName: "kneeRaiseBig_1"),#imageLiteral(resourceName: "kneeRaiseBig_2"),#imageLiteral(resourceName: "kneeRaiseBig_3"),#imageLiteral(resourceName: "kneeRaiseBig_4"),#imageLiteral(resourceName: "kneeRaiseBig_5"),#imageLiteral(resourceName: "kneeRaiseBig_6"),#imageLiteral(resourceName: "kneeRaiseBig_7"),#imageLiteral(resourceName: "kneeRaiseBig_8"),#imageLiteral(resourceName: "kneeRaiseBig_9"),#imageLiteral(resourceName: "kneeRaiseBig_10"),#imageLiteral(resourceName: "kneeRaiseBig_11")]
    kneeRaise.duration = 1.5
    kneeRaise.isFavourite = false
    kneeRaise.text = ["1. This is the text for 1 exercise! 1 str.",
                      "2. This is the text for 1 exercise! 2 str.",
                      "3. This is the text for 1 exercise! 3 str.",
                      "4. This is the text for 1 exercise! 4 str."]
    
    //попеременный подъём гантелей на бицепс хватом «молоток»
    let hummerCurl: Exercise = Exercise()
    hummerCurl.identifier = 18
    hummerCurl.title = "Alternate Hummer Curl"
    hummerCurl.difficulty = "easy"
    hummerCurl.muscles = ["biceps"]
    hummerCurl.thumbnails = [#imageLiteral(resourceName: "hummerCurl_0"),#imageLiteral(resourceName: "hummerCurl_1"),#imageLiteral(resourceName: "hummerCurl_2"),#imageLiteral(resourceName: "hummerCurl_3"),#imageLiteral(resourceName: "hummerCurl_4"),#imageLiteral(resourceName: "hummerCurl_5"),#imageLiteral(resourceName: "hummerCurl_6"),#imageLiteral(resourceName: "hummerCurl_7"),#imageLiteral(resourceName: "hummerCurl_8"),#imageLiteral(resourceName: "hummerCurl_9"),#imageLiteral(resourceName: "hummerCurl_10"),#imageLiteral(resourceName: "hummerCurl_11"),#imageLiteral(resourceName: "hummerCurl_12"),#imageLiteral(resourceName: "hummerCurl_13")]
    hummerCurl.images = [#imageLiteral(resourceName: "hummerCurlBig_0"),#imageLiteral(resourceName: "hummerCurlBig_1"),#imageLiteral(resourceName: "hummerCurlBig_2"),#imageLiteral(resourceName: "hummerCurlBig_3"),#imageLiteral(resourceName: "hummerCurlBig_4"),#imageLiteral(resourceName: "hummerCurlBig_5"),#imageLiteral(resourceName: "hummerCurlBig_6"),#imageLiteral(resourceName: "hummerCurlBig_7"),#imageLiteral(resourceName: "hummerCurlBig_8"),#imageLiteral(resourceName: "hummerCurlBig_9"),#imageLiteral(resourceName: "hummerCurlBig_10"),#imageLiteral(resourceName: "hummerCurlBig_11")]
    hummerCurl.duration = 1.7
    hummerCurl.isFavourite = false
    hummerCurl.text = ["1. This is the text for 1 exercise! 1 str.",
                       "2. This is the text for 1 exercise! 2 str.",
                       "3. This is the text for 1 exercise! 3 str.",
                       "4. This is the text for 1 exercise! 4 str."]
    
    //разгибания на трицепс на верхнем блоке
    let triceps: Exercise = Exercise()
    triceps.identifier = 19
    triceps.title = "Triceps Pushdown"
    triceps.difficulty = "easy"
    triceps.muscles = ["triceps"]
    triceps.thumbnails = [#imageLiteral(resourceName: "tricepsPushdown_0"),#imageLiteral(resourceName: "tricepsPushdown_1"),#imageLiteral(resourceName: "tricepsPushdown_2"),#imageLiteral(resourceName: "tricepsPushdown_3"),#imageLiteral(resourceName: "tricepsPushdown_4"),#imageLiteral(resourceName: "tricepsPushdown_5"),#imageLiteral(resourceName: "tricepsPushdown_6"),#imageLiteral(resourceName: "tricepsPushdown_7"),#imageLiteral(resourceName: "tricepsPushdown_8"),#imageLiteral(resourceName: "tricepsPushdown_9")]
    triceps.images = [#imageLiteral(resourceName: "tricepsPushdownBig_0"),#imageLiteral(resourceName: "tricepsPushdownBig_1"),#imageLiteral(resourceName: "tricepsPushdownBig_2"),#imageLiteral(resourceName: "tricepsPushdownBig_3"),#imageLiteral(resourceName: "tricepsPushdownBig_4"),#imageLiteral(resourceName: "tricepsPushdownBig_5"),#imageLiteral(resourceName: "tricepsPushdownBig_6"),#imageLiteral(resourceName: "tricepsPushdownBig_7"),#imageLiteral(resourceName: "tricepsPushdownBig_8"),#imageLiteral(resourceName: "tricepsPushdownBig_9")]
    triceps.duration = 1.5
    triceps.isFavourite = false
    triceps.text = ["1. This is the text for 1 exercise! 1 str.",
                    "2. This is the text for 1 exercise! 2 str.",
                    "3. This is the text for 1 exercise! 3 str.",
                    "4. This is the text for 1 exercise! 4 str."]
    
    //для начинающих
    let forBeginers: Program = Program()
    forBeginers.identifier = 0
    forBeginers.title = "For Beginers"
    forBeginers.forMuscles = ["quads"]
    forBeginers.image = #imageLiteral(resourceName: "forBeginers")
    forBeginers.cost = "FREE"
    
    forBeginers.addToExercises(bikeMachine)
    forBeginers.addToExercises(legPress)
    forBeginers.addToExercises(barbellSquat)
    
    forBeginers.addToExercises(inclineSitUp)
    forBeginers.addToExercises(kneeRaise)
    
    forBeginers.addToExercises(dips)
    forBeginers.addToExercises(triceps)
    
    forBeginers.addToExercises(hummerCurl)
    
    //для снижения веса
    let forWeightLoss: Program = Program()
    forWeightLoss.identifier = 1
    forWeightLoss.title = "For Weight Loss"
    forWeightLoss.image = #imageLiteral(resourceName: "forWeightLoss")
    forWeightLoss.cost = "FREE"
    
    //общеукрепляющая
    let general: Program = Program()
    general.identifier = 2
    general.title = "General"
    general.image = #imageLiteral(resourceName: "general")
    general.cost = "FREE"
    
    //упругие ягодицы
    let elasticButtocks: Program = Program()
    elasticButtocks.identifier = 3
    elasticButtocks.title = "Elastic Buttocks"
    elasticButtocks.image = #imageLiteral(resourceName: "elasticButtocks")
    elasticButtocks.cost = "FREE"
    
    //для профессионалов
    let forProfessionals: Program = Program()
    forProfessionals.identifier = 4
    forProfessionals.title = "For Professionals"
    forProfessionals.image = #imageLiteral(resourceName: "forProfessionals")
    forProfessionals.cost = "FREE"
    
    //изящная фигура
    let neatFigure: Program = Program()
    neatFigure.identifier = 5
    neatFigure.title = "Neat Figure"
    neatFigure.image = #imageLiteral(resourceName: "neatFigure")
    neatFigure.cost = "FREE"
    
    //рельефный пресс
    let sixpackAbs: Program = Program()
    sixpackAbs.identifier = 6
    sixpackAbs.title = "Six-pack Abs"
    sixpackAbs.image = #imageLiteral(resourceName: "sixpackAbs")
    sixpackAbs.cost = "FREE"
    
    //для бодибилдеров
    let forBodybuilders: Program = Program()
    forBodybuilders.identifier = 7
    forBodybuilders.title = "For Bodybuilders"
    forBodybuilders.image = #imageLiteral(resourceName: "forBodybuilders")
    forBodybuilders.cost = "FREE"

    CoreDataManager.saveContext()
    
    UserDefaults.standard.set(true, forKey: "dataInitialized")
}


