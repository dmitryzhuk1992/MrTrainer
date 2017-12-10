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
    let firstUserAnswer = UserAnswer()
    firstUserAnswer.answer = ""
    let firstQuestion: Question = Question()
    firstQuestion.id = 0
    firstQuestion.text = "Ваш пол?"
    firstQuestion.addToPossibleAnswers(answersToTheFirstQue)
    firstQuestion.userAnswer = firstUserAnswer
    
    let answersToTheSecondQue: PossibleAnswers = PossibleAnswers()
    answersToTheSecondQue.answers = ["до 16","16...25","25...40","за 40"]
    let secondUserAnswer = UserAnswer()
    secondUserAnswer.answer = ""
    let secondQuestion: Question = Question()
    secondQuestion.id = 1
    secondQuestion.text = "Ваш возраст?"
    secondQuestion.addToPossibleAnswers(answersToTheSecondQue)
    secondQuestion.userAnswer = secondUserAnswer
    
    let answersToTheThirdQue: PossibleAnswers = PossibleAnswers()
    answersToTheThirdQue.answers = ["менее 50","50...70","70...90","более 90"]
    let thirdUserAnswer = UserAnswer()
    thirdUserAnswer.answer = ""
    let thirdQuestion: Question = Question()
    thirdQuestion.id = 2
    thirdQuestion.text = "Ваш вес?"
    thirdQuestion.addToPossibleAnswers(answersToTheThirdQue)
    thirdQuestion.userAnswer = thirdUserAnswer
    
    let answersToTheFourthQue: PossibleAnswers = PossibleAnswers()
    answersToTheFourthQue.answers = ["ниже 160","160...170","170...190","выше 190"]
    let fourthUserAnswer = UserAnswer()
    fourthUserAnswer.answer = ""
    let fourthQuestion: Question = Question()
    fourthQuestion.id = 3
    fourthQuestion.text = "Ваш рост?"
    fourthQuestion.addToPossibleAnswers(answersToTheFourthQue)
    fourthQuestion.userAnswer = fourthUserAnswer
    
    let answersToTheFifthQue: PossibleAnswers = PossibleAnswers()
    answersToTheFifthQue.answers = ["Худое","Среднее","Полное","Мускулистое"]
    let fifthUserAnswer = UserAnswer()
    fifthUserAnswer.answer = ""
    let fifthQuestion: Question = Question()
    fifthQuestion.id = 4
    fifthQuestion.text = "Ваше телосложение?"
    fifthQuestion.addToPossibleAnswers(answersToTheFifthQue)
    fifthQuestion.userAnswer = fifthUserAnswer
    
    let answersToTheSixthQue: PossibleAnswers = PossibleAnswers()
    answersToTheSixthQue.answers = ["Начинающий","Ранее тренировался","Иногда тренируюсь","Спортсмен"]
    let sixthUserAnswer = UserAnswer()
    sixthUserAnswer.answer = ""
    let sixthQuestion: Question = Question()
    sixthQuestion.id = 5
    sixthQuestion.text = "Стаж тренировок?"
    sixthQuestion.addToPossibleAnswers(answersToTheSixthQue)
    sixthQuestion.userAnswer = sixthUserAnswer
    
    let answersToTheSeventhQue: PossibleAnswers = PossibleAnswers()
    answersToTheSeventhQue.answers = ["Низкий","Средний","Высокий"]
    let sevenUserAnswer = UserAnswer()
    sevenUserAnswer.answer = ""
    let seventhQuestion: Question = Question()
    seventhQuestion.id = 6
    seventhQuestion.text = "Ваш уровень активности?"
    seventhQuestion.addToPossibleAnswers(answersToTheSeventhQue)
    seventhQuestion.userAnswer = sevenUserAnswer
    
    let answersToTheEighthQue: PossibleAnswers = PossibleAnswers()
    answersToTheEighthQue.answers = ["Полностью здоров","Проблемы с суставами","Проблемы с давлением"]
    let eightUserAnswer = UserAnswer()
    eightUserAnswer.answer = ""
    let eighthQuestion: Question = Question()
    eighthQuestion.id = 7
    eighthQuestion.text = "Ваше состояние здоровья?"
    eighthQuestion.addToPossibleAnswers(answersToTheEighthQue)
    eighthQuestion.userAnswer = eightUserAnswer
    
    let answersToTheNinthQue: PossibleAnswers = PossibleAnswers()
    answersToTheNinthQue.answers = ["Похудеть","Увеличить рельеф","Набрать массу","Увеличить силу"]
    let ninthUserAnswer = UserAnswer()
    ninthUserAnswer.answer = ""
    let ninthQuestion: Question = Question()
    ninthQuestion.id = 7
    ninthQuestion.text = "Ваша цель?"
    ninthQuestion.addToPossibleAnswers(answersToTheNinthQue)
    ninthQuestion.userAnswer = ninthUserAnswer
}

func initData() {
    
    //1.эллиптический тренажёр
    let ellipticalMachine: Exercise = Exercise()
    ellipticalMachine.identifier = 0
    ellipticalMachine.title = "Эллиптический тренажёр"
    ellipticalMachine.difficulty = "Нормально"
    ellipticalMachine.muscles = ["Квадрицепс","Ягодицы","Бёдра","Икры"]
    ellipticalMachine.thumbnails = [#imageLiteral(resourceName: "ellips_0"),#imageLiteral(resourceName: "ellips_1"),#imageLiteral(resourceName: "ellips_2"),#imageLiteral(resourceName: "ellips_3"),#imageLiteral(resourceName: "ellips_4"),#imageLiteral(resourceName: "ellips_5"),#imageLiteral(resourceName: "ellips_6"),#imageLiteral(resourceName: "ellips_7"),#imageLiteral(resourceName: "ellips_8"),#imageLiteral(resourceName: "ellips_9"),#imageLiteral(resourceName: "ellips_10"),#imageLiteral(resourceName: "ellips_11")]
    ellipticalMachine.images = [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")]
    ellipticalMachine.duration = 1.4
    ellipticalMachine.isFavourite = false
    ellipticalMachine.text = ["1. Перед началом тренировки необходимо подготовить тело к предстоящей работе.  Разминка должна быть направлена на те мышцы, которые будут задействованы во время тренировки.",
                              "2. Основное положение на эллиптическом тренажере - тело расположено вертикально, а взгляд устремлен вперед.",
                              "3. Выполняя движение назад, старайтесь больше сгибать ноги в коленях. В таком случае максимальная нагрузка будет сосредоточена на ягодичных мышцах и подколенном сухожилии.",
                              "4. Наклонив корпус вперед, переносите максимальную нагрузку на мышцы бедра и икроножные мышцы.",
                              "5. Выполняя упражнение, постарайтесь втягивать мышцы живота. Это позволит Вам сделать фигуру более стройной."]
    
    //2.велотренажёр
    let bikeMachine: Exercise = Exercise()
    bikeMachine.identifier = 1
    bikeMachine.title = "Велотренажёр"
    bikeMachine.difficulty = "Легко"
    bikeMachine.muscles = ["Квадрицепс","Ягодицы","Икры"]
    bikeMachine.thumbnails = [#imageLiteral(resourceName: "bike_0"),#imageLiteral(resourceName: "bike_1"),#imageLiteral(resourceName: "bike_2"),#imageLiteral(resourceName: "bike_3"),#imageLiteral(resourceName: "bike_4"),#imageLiteral(resourceName: "bike_5"),#imageLiteral(resourceName: "bike_6"),#imageLiteral(resourceName: "bike_7"),#imageLiteral(resourceName: "bike_8"),#imageLiteral(resourceName: "bike_9"),#imageLiteral(resourceName: "bike_10"),#imageLiteral(resourceName: "bike_11")]
    bikeMachine.images = [#imageLiteral(resourceName: "bikeBig_0"),#imageLiteral(resourceName: "bikeBig_1"),#imageLiteral(resourceName: "bikeBig_2"),#imageLiteral(resourceName: "bikeBig_3"),#imageLiteral(resourceName: "bikeBig_4"),#imageLiteral(resourceName: "bikeBig_5"),#imageLiteral(resourceName: "bikeBig_6"),#imageLiteral(resourceName: "bikeBig_7"),#imageLiteral(resourceName: "bikeBig_8"),#imageLiteral(resourceName: "bikeBig_9"),#imageLiteral(resourceName: "bikeBig_10"),#imageLiteral(resourceName: "bikeBig_11")]
    bikeMachine.duration = 1.2
    bikeMachine.isFavourite = false
    bikeMachine.text = ["1. Перед тренировкой необходимо размять суставы и связки.",
                        "2. Первые 3-5 минут крутите педали в медленном темпе, т.к. это позволит запустить Вашу дыхательную и кровеносную систему.",
                        "3. Выполняя упражнение, не стоит сильно прогибать поясницу. Руки необходимо держать в расслабленном состоянии и не переносить вес тела на них.",
                        "4. Стопы параллельны полу, в то время как колени устремлены вперед.",
                        "5. Держите голову прямо, чтобы взгляд был направлен вперед.",
                        "6. За 2-3 минуты до конца тренировки необходимо сделать заминку, снизив интенсивность выполнения упражнения. Это позволит привести Ваш пульс в нормальное состояние."]
    
    //3.беговая дорожка
    let runningMachine: Exercise = Exercise()
    runningMachine.identifier = 2
    runningMachine.title = "Беговая дорожка"
    runningMachine.difficulty = "Легко"
    runningMachine.muscles = ["Икры","Бёдра"]
    runningMachine.thumbnails = [#imageLiteral(resourceName: "running_0"),#imageLiteral(resourceName: "running_1"),#imageLiteral(resourceName: "running_2"),#imageLiteral(resourceName: "running_3"),#imageLiteral(resourceName: "running_4"),#imageLiteral(resourceName: "running_5"),#imageLiteral(resourceName: "running_6"),#imageLiteral(resourceName: "running_7"),#imageLiteral(resourceName: "running_8"),#imageLiteral(resourceName: "running_9"),#imageLiteral(resourceName: "running_10")]
    runningMachine.images = [#imageLiteral(resourceName: "runningBig_0"),#imageLiteral(resourceName: "runningBig_1"),#imageLiteral(resourceName: "runningBig_2"),#imageLiteral(resourceName: "runningBig_3"),#imageLiteral(resourceName: "runningBig_4"),#imageLiteral(resourceName: "runningBig_5"),#imageLiteral(resourceName: "runningBig_6"),#imageLiteral(resourceName: "runningBig_7"),#imageLiteral(resourceName: "runningBig_8"),#imageLiteral(resourceName: "runningBig_9"),#imageLiteral(resourceName: "runningBig_10")]
    runningMachine.duration = 0.8
    runningMachine.isFavourite = false
    runningMachine.text = ["1. Прежде чем Вы приступите к бегу на беговой дорожке необходимо разогреться. Пяти минут энергичного шага будет достаточно.",
                           "2. Угол наклона беговой дорожки для начала лучше установить в положении 1-2 %, постепенно увеличивая.",
                           "3. Если Вы ощущаете, что устали и необходимо сбросить темп бега, то следует уменьшать скорость бегового полотна, а не Вашу скорость. Поскольку это может привести к тому, что Вы споткнетесь и травмируете тело.",
                           "4. Если Вы новичок, то продолжительность тренировок может составлять не более 15-20 минут.  Оптимальная длительность бега на беговой дорожке составляет порядка 40-60 минут."]
    
    //4.тяга верхнего блока за голову
    let behindTheNeck: Exercise = Exercise()
    behindTheNeck.identifier = 3
    behindTheNeck.title = "Тяга верхнего блока за голову"
    behindTheNeck.difficulty = "Легко"
    behindTheNeck.muscles = ["Широчайшие мышцы","Бицепс","Плечи"]
    behindTheNeck.thumbnails = [#imageLiteral(resourceName: "behindTheNeck_0"),#imageLiteral(resourceName: "behindTheNeck_1"),#imageLiteral(resourceName: "behindTheNeck_2"),#imageLiteral(resourceName: "behindTheNeck_3"),#imageLiteral(resourceName: "behindTheNeck_4"),#imageLiteral(resourceName: "behindTheNeck_5"),#imageLiteral(resourceName: "behindTheNeck_6"),#imageLiteral(resourceName: "behindTheNeck_7"),#imageLiteral(resourceName: "behindTheNeck_8"),#imageLiteral(resourceName: "behindTheNeck_9"),#imageLiteral(resourceName: "behindTheNeck_10"),#imageLiteral(resourceName: "behindTheNeck_11")]
    behindTheNeck.images = [#imageLiteral(resourceName: "behindTheNeckBig_0"),#imageLiteral(resourceName: "behindTheNeckBig_1"),#imageLiteral(resourceName: "behindTheNeckBig_2"),#imageLiteral(resourceName: "behindTheNeckBig_3"),#imageLiteral(resourceName: "behindTheNeckBig_4"),#imageLiteral(resourceName: "behindTheNeckBig_5"),#imageLiteral(resourceName: "behindTheNeckBig_6"),#imageLiteral(resourceName: "behindTheNeckBig_7"),#imageLiteral(resourceName: "behindTheNeckBig_8"),#imageLiteral(resourceName: "behindTheNeckBig_9"),#imageLiteral(resourceName: "behindTheNeckBig_10"),#imageLiteral(resourceName: "behindTheNeckBig_11")]
    behindTheNeck.duration = 1.5
    behindTheNeck.isFavourite = false
    behindTheNeck.text = ["1. Возьмите гриф широких хватом сверху. Сядьте на лавку отрегулированного под Ваш рост тренажера. Бедра расположите под валиками.",
                          "2. Исходное положение – спина прямо, руки выпрямлены, стопы плотно прижмите к полу.",
                          "3. На выдохе – тяните гриф вниз, за голову примерно до середины затылка, сводя при этом лопатки вместе. Можете задержаться в крайнем положении.",
                          "4. На вдохе – верните гриф в исходное положение."]
    
    //5.тяга штанги в наклоне
    let bentOver: Exercise = Exercise()
    bentOver.identifier = 4
    bentOver.title = "Тяга штанги в наклоне"
    bentOver.difficulty = "Легко"
    bentOver.muscles = ["Широчайшие мышцы","Бицепс","Плечи","Спина","Низ спины"]
    bentOver.thumbnails = [#imageLiteral(resourceName: "bent_0"),#imageLiteral(resourceName: "bent_1"),#imageLiteral(resourceName: "bent_2"),#imageLiteral(resourceName: "bent_3"),#imageLiteral(resourceName: "bent_4"),#imageLiteral(resourceName: "bent_5"),#imageLiteral(resourceName: "bent_6"),#imageLiteral(resourceName: "bent_7"),#imageLiteral(resourceName: "bent_8"),#imageLiteral(resourceName: "bent_9"),#imageLiteral(resourceName: "bent_10"),#imageLiteral(resourceName: "bent_11")]
    bentOver.images = [#imageLiteral(resourceName: "bentBig_0"),#imageLiteral(resourceName: "bentBig_1"),#imageLiteral(resourceName: "bentBig_2"),#imageLiteral(resourceName: "bentBig_3"),#imageLiteral(resourceName: "bentBig_4"),#imageLiteral(resourceName: "bentBig_5"),#imageLiteral(resourceName: "bentBig_6"),#imageLiteral(resourceName: "bentBig_7"),#imageLiteral(resourceName: "bentBig_8"),#imageLiteral(resourceName: "bentBig_9")]
    bentOver.duration = 1.6
    bentOver.isFavourite = false
    bentOver.text = ["1. Возьмите штангу хватом сверху (ладони обращены вниз) немного шире плеч.",
                     "2. Исходное положение – ноги на ширине плеч, немного согнуты в коленях (10 - 20 градусов) наклонитесь вперед, тело при этом должно быть практически параллельно полу и перпендикулярно бедрам. Держите спину прямой.",
                     "3. На выдохе - держа туловище неподвижно, тяните штангу к себе. При этом максимально отводите назад локти и плечи, сведите лопатки. Притянув гриф к поясу, напрягите мышцы спины и на секунду задержитесь в этом положении.",
                     "4. На вдохе - медленно верните штангу в исходное положение."]
    
    //6.становая тяга
    let deadlift: Exercise = Exercise()
    deadlift.identifier = 5
    deadlift.title = "Становая тяга"
    deadlift.difficulty = "Нормально"
    deadlift.muscles = ["Низ спины","Предплечья","Квадрицепс","Трапеция","Широчайшие мыщцы","Ягодицы","Бёдра"]
    deadlift.thumbnails = [#imageLiteral(resourceName: "deadlift_0"),#imageLiteral(resourceName: "deadlift_1"),#imageLiteral(resourceName: "deadlift_2"),#imageLiteral(resourceName: "deadlift_3"),#imageLiteral(resourceName: "deadlift_4"),#imageLiteral(resourceName: "deadlift_5"),#imageLiteral(resourceName: "deadlift_6"),#imageLiteral(resourceName: "deadlift_7"),#imageLiteral(resourceName: "deadlift_8"),#imageLiteral(resourceName: "deadlift_9"),#imageLiteral(resourceName: "deadlift_10"),#imageLiteral(resourceName: "deadlift_11")]
    deadlift.images = [#imageLiteral(resourceName: "deadliftBig_0"),#imageLiteral(resourceName: "deadliftBig_1"),#imageLiteral(resourceName: "deadliftBig_2"),#imageLiteral(resourceName: "deadliftBig_3"),#imageLiteral(resourceName: "deadliftBig_4"),#imageLiteral(resourceName: "deadliftBig_5"),#imageLiteral(resourceName: "deadliftBig_6"),#imageLiteral(resourceName: "deadliftBig_7"),#imageLiteral(resourceName: "deadliftBig_8"),#imageLiteral(resourceName: "deadliftBig_9"),#imageLiteral(resourceName: "deadliftBig_10"),#imageLiteral(resourceName: "deadliftBig_11")]
    deadlift.duration = 1.6
    deadlift.isFavourite = false
    deadlift.text = ["1. Исходное положение - станьте вплотную к грифу штанги, ноги немного уже плеч. Присядьте и возьмите штангу хватом сверху. Плечи должны находиться ровно над грифом штанги. Спину держите ровно.",
                     "2. На выдохе – тяните штангу вверх, выпрямляя тело. Грифом штанги скользите вдоль ног. Полностью выпрямитесь, при этом сведите лопатки вместе.",
                     "3. На вдохе - начните движение в обратном направлении. При этом сначала отведите таз назад. Скользите грифом вдоль тела, сгибая спину. После того, как пройдете колени, начните сгибать ноги, держа при этом спину прямо. Коснитесь штангой пола."]
    
    //7.подтягивания широким хватом
    let pullUp: Exercise = Exercise()
    pullUp.identifier = 6
    pullUp.title = "Подтягивания широким хватом"
    pullUp.difficulty = "Нормально"
    pullUp.muscles = ["Широчайшие мышцы","Бицепс","Спина"]
    pullUp.thumbnails = [#imageLiteral(resourceName: "pullUp_0"),#imageLiteral(resourceName: "pullUp_1"),#imageLiteral(resourceName: "pullUp_2"),#imageLiteral(resourceName: "pullUp_3"),#imageLiteral(resourceName: "pullUp_4"),#imageLiteral(resourceName: "pullUp_5"),#imageLiteral(resourceName: "pullUp_6"),#imageLiteral(resourceName: "pullUp_7"),#imageLiteral(resourceName: "pullUp_8"),#imageLiteral(resourceName: "pullUp_9"),#imageLiteral(resourceName: "pullUp_10"),#imageLiteral(resourceName: "pullUp_11")]
    pullUp.images = [#imageLiteral(resourceName: "pullUpBig_0"),#imageLiteral(resourceName: "pullUpBig_1"),#imageLiteral(resourceName: "pullUpBig_2"),#imageLiteral(resourceName: "pullUpBig_3"),#imageLiteral(resourceName: "pullUpBig_4"),#imageLiteral(resourceName: "pullUpBig_5"),#imageLiteral(resourceName: "pullUpBig_6"),#imageLiteral(resourceName: "pullUpBig_7"),#imageLiteral(resourceName: "pullUpBig_8"),#imageLiteral(resourceName: "pullUpBig_9"),#imageLiteral(resourceName: "pullUpBig_10"),#imageLiteral(resourceName: "pullUpBig_11")]
    pullUp.duration = 1.5
    pullUp.isFavourite = false
    pullUp.text = ["1. Исходное положение: возьмитесь за перекладину турника широким хватом сверху.",
                   "2. На выдохе - выполните подтягивание, пока перекладина не окажется за шеей (если подтягиваетесь к груди, то коснуться перекладины верхней частью груди). Задержитесь в верхней точке.",
                   "3. На выдохе - медленно вернитесь в исходное положение."]
    
    //8.жим штанги из-за головы в машине Смита
    let behindPress: Exercise = Exercise()
    behindPress.identifier = 7
    behindPress.title = "Жим штанги из-за головы в тренажёре Смита"
    behindPress.difficulty = "Легко"
    behindPress.muscles = ["Плечи","Трицепс"]
    behindPress.thumbnails = [#imageLiteral(resourceName: "behindPress_0"),#imageLiteral(resourceName: "behindPress_1"),#imageLiteral(resourceName: "behindPress_2"),#imageLiteral(resourceName: "behindPress_3"),#imageLiteral(resourceName: "behindPress_4"),#imageLiteral(resourceName: "behindPress_5"),#imageLiteral(resourceName: "behindPress_6"),#imageLiteral(resourceName: "behindPress_7"),#imageLiteral(resourceName: "behindPress_8"),#imageLiteral(resourceName: "behindPress_9"),#imageLiteral(resourceName: "behindPress_10"),#imageLiteral(resourceName: "behindPress_11")]
    behindPress.images = [#imageLiteral(resourceName: "behindPressBig_0"),#imageLiteral(resourceName: "behindPressBig_1"),#imageLiteral(resourceName: "behindPressBig_2"),#imageLiteral(resourceName: "behindPressBig_3"),#imageLiteral(resourceName: "behindPressBig_4"),#imageLiteral(resourceName: "behindPressBig_5"),#imageLiteral(resourceName: "behindPressBig_6"),#imageLiteral(resourceName: "behindPressBig_7"),#imageLiteral(resourceName: "behindPressBig_8"),#imageLiteral(resourceName: "behindPressBig_9"),#imageLiteral(resourceName: "behindPressBig_10"),#imageLiteral(resourceName: "behindPressBig_11")]
    behindPress.duration = 1.5
    behindPress.isFavourite = false
    behindPress.text = ["1. Возьмите штангу в руки хватом чуть шире плеч.",
                        "2. Примите исходное положение: штанга лежит на плечах. Спина прямая.",
                        "3. На выдохе – поднимите медленно штангу вверх, полностью выпрямив руки.",
                        "4. На вдохе – опустите штангу за голову примерно до уровня глаз."]
    
    //9.разведение рук с гантелями в стороны
    let dumbbell: Exercise = Exercise()
    dumbbell.identifier = 8
    dumbbell.title = "Разведение рук с гантелями в стороны"
    dumbbell.difficulty = "Легко"
    dumbbell.muscles = ["Плечи","Трицепс"]
    dumbbell.thumbnails = [#imageLiteral(resourceName: "dumbbell_0"),#imageLiteral(resourceName: "dumbbell_1"),#imageLiteral(resourceName: "dumbbell_2"),#imageLiteral(resourceName: "dumbbell_3"),#imageLiteral(resourceName: "dumbbell_4"),#imageLiteral(resourceName: "dumbbell_5"),#imageLiteral(resourceName: "dumbbell_6"),#imageLiteral(resourceName: "dumbbell_7"),#imageLiteral(resourceName: "dumbbell_8"),#imageLiteral(resourceName: "dumbbell_9"),#imageLiteral(resourceName: "dumbbell_10"),#imageLiteral(resourceName: "dumbbell_11")]
    dumbbell.images = [#imageLiteral(resourceName: "dumbbellBig_0"),#imageLiteral(resourceName: "dumbbellBig_1"),#imageLiteral(resourceName: "dumbbellBig_2"),#imageLiteral(resourceName: "dumbbellBig_3"),#imageLiteral(resourceName: "dumbbellBig_4"),#imageLiteral(resourceName: "dumbbellBig_5"),#imageLiteral(resourceName: "dumbbellBig_6"),#imageLiteral(resourceName: "dumbbellBig_7"),#imageLiteral(resourceName: "dumbbellBig_8"),#imageLiteral(resourceName: "dumbbellBig_9"),#imageLiteral(resourceName: "dumbbellBig_10"),#imageLiteral(resourceName: "dumbbellBig_11")]
    dumbbell.duration = 1.7
    dumbbell.isFavourite = false
    dumbbell.text = ["1. Исходное положение – наклонитесь вперед практически параллельно полу. Можете даже упереться лбом в подходящую опору (подойдет угол скамьи). Руки опущены вниз, слегка согнуты в локтях, ладони обращены друг к другу.",
                     "2. На выдохе – оставляя корпус тела неподвижным, разводите гантели в стороны, сохраняя небольшой изгиб в локтевых суставах. Движение выполняйте немного не доводя руки до параллели к полу.",
                     "3. На вдохе – верните руки с гантелями по такой же дуге."]
    
    //10.армейский жим стоя
    let overhead: Exercise = Exercise()
    overhead.identifier = 9
    overhead.title = "Армейский жим штанги стоя"
    overhead.difficulty = "Тяжело"
    overhead.muscles = ["Плечи","Грудь","Трапеция","Трицепс"]
    overhead.thumbnails = [#imageLiteral(resourceName: "overhead_0"),#imageLiteral(resourceName: "overhead_1"),#imageLiteral(resourceName: "overhead_2"),#imageLiteral(resourceName: "overhead_3"),#imageLiteral(resourceName: "overhead_4"),#imageLiteral(resourceName: "overhead_5"),#imageLiteral(resourceName: "overhead_6"),#imageLiteral(resourceName: "overhead_7"),#imageLiteral(resourceName: "overhead_8"),#imageLiteral(resourceName: "overhead_9"),#imageLiteral(resourceName: "overhead_10")]
    overhead.images = [#imageLiteral(resourceName: "overheadBig_0"),#imageLiteral(resourceName: "overheadBig_1"),#imageLiteral(resourceName: "overheadBig_2"),#imageLiteral(resourceName: "overheadBig_3"),#imageLiteral(resourceName: "overheadBig_4"),#imageLiteral(resourceName: "overheadBig_5"),#imageLiteral(resourceName: "overheadBig_6"),#imageLiteral(resourceName: "overheadBig_7"),#imageLiteral(resourceName: "overheadBig_8"),#imageLiteral(resourceName: "overheadBig_9"),#imageLiteral(resourceName: "overheadBig_10")]
    overhead.duration = 1.5
    overhead.isFavourite = false
    overhead.text = ["1. Возьмитесь за гриф немного шире плеч хватом сверху. Поднимите штангу на грудь.",
                     "2. Исходное положение: штанга находится на груди, локти немного выдвинуты вперед (так, чтобы ладони смотрели точно вверх), спину держите прямой. Ноги на ширине плеч, немного согнуты в коленях.",
                     "3. На выдохе – плавно выжмите штангу вверх, пока не зафиксируете её на прямых руках.",
                     "4. На вдохе - опустите штангу обратно на грудь."]
    
    //11.вертикальная тяга штанги
    let rearUpright: Exercise = Exercise()
    rearUpright.identifier = 10
    rearUpright.title = "Вертикальная тяга штанги"
    rearUpright.difficulty = "Легко"
    rearUpright.muscles = ["Плечи","Трапеция"]
    rearUpright.thumbnails = [#imageLiteral(resourceName: "rearUpright_0"),#imageLiteral(resourceName: "rearUpright_1"),#imageLiteral(resourceName: "rearUpright_2"),#imageLiteral(resourceName: "rearUpright_3"),#imageLiteral(resourceName: "rearUpright_4"),#imageLiteral(resourceName: "rearUpright_5"),#imageLiteral(resourceName: "rearUpright_6"),#imageLiteral(resourceName: "rearUpright_7"),#imageLiteral(resourceName: "rearUpright_8"),#imageLiteral(resourceName: "rearUpright_9"),#imageLiteral(resourceName: "rearUpright_10"),#imageLiteral(resourceName: "rearUpright_11")]
    rearUpright.images = [#imageLiteral(resourceName: "rearUprightBig_0"),#imageLiteral(resourceName: "rearUprightBig_1"),#imageLiteral(resourceName: "rearUprightBig_2"),#imageLiteral(resourceName: "rearUprightBig_3"),#imageLiteral(resourceName: "rearUprightBig_4"),#imageLiteral(resourceName: "rearUprightBig_5"),#imageLiteral(resourceName: "rearUprightBig_6"),#imageLiteral(resourceName: "rearUprightBig_7"),#imageLiteral(resourceName: "rearUprightBig_8"),#imageLiteral(resourceName: "rearUprightBig_9"),#imageLiteral(resourceName: "rearUprightBig_10"),#imageLiteral(resourceName: "rearUprightBig_11")]
    rearUpright.duration = 1.5
    rearUpright.isFavourite = false
    rearUpright.text = ["1. Возьмите штангу хватом сверху. Расстояние между руками 10-15 см.",
                        "2. Исходное положение - поясница прогнута, спина прямая, немного наклонитесь вперед.",
                        "3. На выдохе - тяните штангу в небольшом удалении от корпуса к подбородку до уровня груди. Осуществляйте движение за счет локтей, плечи опущены вниз. В верхней точке задержите штангу на пару секунд.",
                        "4. На выдохе - плавно опускайте штангу вниз."]
    
    //12.приседания со штангой
    let barbellSquat: Exercise = Exercise()
    barbellSquat.identifier = 11
    barbellSquat.title = "Приседания со штангой"
    barbellSquat.difficulty = "Нормально"
    barbellSquat.muscles = ["Квадрицепс","Ягодицы","Бёдра"]
    barbellSquat.thumbnails = [#imageLiteral(resourceName: "barbellSquart_0"),#imageLiteral(resourceName: "barbellSquart_1"),#imageLiteral(resourceName: "barbellSquart_2"),#imageLiteral(resourceName: "barbellSquart_3"),#imageLiteral(resourceName: "barbellSquart_4"),#imageLiteral(resourceName: "barbellSquart_5"),#imageLiteral(resourceName: "barbellSquart_6"),#imageLiteral(resourceName: "barbellSquart_7"),#imageLiteral(resourceName: "barbellSquart_8"),#imageLiteral(resourceName: "barbellSquart_9"),#imageLiteral(resourceName: "barbellSquart_10"),#imageLiteral(resourceName: "barbellSquart_11")]
    barbellSquat.images = [#imageLiteral(resourceName: "barbellSquatBig_0"),#imageLiteral(resourceName: "barbellSquatBig_1"),#imageLiteral(resourceName: "barbellSquatBig_2"),#imageLiteral(resourceName: "barbellSquatBig_3"),#imageLiteral(resourceName: "barbellSquatBig_4"),#imageLiteral(resourceName: "barbellSquatBig_5"),#imageLiteral(resourceName: "barbellSquatBig_6"),#imageLiteral(resourceName: "barbellSquatBig_7"),#imageLiteral(resourceName: "barbellSquatBig_8"),#imageLiteral(resourceName: "barbellSquatBig_9"),#imageLiteral(resourceName: "barbellSquatBig_10"),#imageLiteral(resourceName: "barbellSquatBig_11")]
    barbellSquat.duration = 1.5
    barbellSquat.isFavourite = false
    barbellSquat.text = ["1. Возьмите штангу и положите её на плечи.",
                         "2. Исходное положение - встаньте в комфортную позицию для прыжка. Если представить, что сейчас прыгнешь вперед, то ноги возьмут ту ширину и изгиб оптимальный для приседаний.",
                         "3. На вдохе – плавно опускайтесь вниз.",
                         "4. На выдохе – вернитесь в исходное положение. Не разгибайте полностью колени, оставляйте их чуть согнутыми, контролируйте напряжение."]
    
    //13.жим ногами в тренажёре лёжа
    let legPress: Exercise = Exercise()
    legPress.identifier = 12
    legPress.title = "Жим ногами в тренажёре лёжа"
    legPress.difficulty = "Легко"
    legPress.muscles = ["Квадрицепс","Ягодицы","Бёдра"]
    legPress.thumbnails = [#imageLiteral(resourceName: "legPress_0"),#imageLiteral(resourceName: "legPress_1"),#imageLiteral(resourceName: "legPress_2"),#imageLiteral(resourceName: "legPress_3"),#imageLiteral(resourceName: "legPress_4"),#imageLiteral(resourceName: "legPress_5"),#imageLiteral(resourceName: "legPress_6"),#imageLiteral(resourceName: "legPress_7"),#imageLiteral(resourceName: "legPress_8"),#imageLiteral(resourceName: "legPress_9"),#imageLiteral(resourceName: "legPress_10")]
    legPress.images = [#imageLiteral(resourceName: "legPressBig_0"),#imageLiteral(resourceName: "legPressBig_1"),#imageLiteral(resourceName: "legPressBig_2"),#imageLiteral(resourceName: "legPressBig_3"),#imageLiteral(resourceName: "legPressBig_4"),#imageLiteral(resourceName: "legPressBig_5"),#imageLiteral(resourceName: "legPressBig_6"),#imageLiteral(resourceName: "legPressBig_7"),#imageLiteral(resourceName: "legPressBig_8"),#imageLiteral(resourceName: "legPressBig_9"),#imageLiteral(resourceName: "legPressBig_10")]
    legPress.duration = 1.5
    legPress.isFavourite = false
    legPress.text = ["1. Установите необходимую нагрузку на платформу тренажера. Лягте на тренажер, ноги расположите в середине платформы на ширине плеч.",
                     "2. Исходное положение - выжмите немного платформу и руками снимите её со стопоров (руки удерживают поручни во время всего упражнения). Голову прижмите к спинке.",
                     "3. На вдохе - медленно сгибайте ноги вниз до угла 90 градусов в коленном суставе.",
                     "4. На выдохе - разгибайте колени, толкая вес пятками, возвращая платформу в исходное положение."]
    
    //14.жим штанги лёжа на скамье
    let benchPress: Exercise = Exercise()
    benchPress.identifier = 13
    benchPress.title = "Жим штанги лёжа на скамье"
    benchPress.difficulty = "Нормально"
    benchPress.muscles = ["Грудь","Плечи","Трицепс"]
    benchPress.thumbnails = [#imageLiteral(resourceName: "benchPress_0"),#imageLiteral(resourceName: "benchPress_1"),#imageLiteral(resourceName: "benchPress_2"),#imageLiteral(resourceName: "benchPress_3"),#imageLiteral(resourceName: "benchPress_4"),#imageLiteral(resourceName: "benchPress_5"),#imageLiteral(resourceName: "benchPress_6"),#imageLiteral(resourceName: "benchPress_7"),#imageLiteral(resourceName: "benchPress_8"),#imageLiteral(resourceName: "benchPress_9")]
    benchPress.images = [#imageLiteral(resourceName: "benchPressBig_0"),#imageLiteral(resourceName: "benchPressBig_1"),#imageLiteral(resourceName: "benchPressBig_2"),#imageLiteral(resourceName: "benchPressBig_3"),#imageLiteral(resourceName: "benchPressBig_4"),#imageLiteral(resourceName: "benchPressBig_5"),#imageLiteral(resourceName: "benchPressBig_6"),#imageLiteral(resourceName: "benchPressBig_7"),#imageLiteral(resourceName: "benchPressBig_8"),#imageLiteral(resourceName: "benchPressBig_9")]
    benchPress.duration = 1.5
    benchPress.isFavourite = false
    benchPress.text = ["1. Исходное положение: лягте спиной на горизонтальную скамью. Спина прогнута в пояснице, лопатки соединены, ноги под прямым углом в упоре. Возьмите штангу таким хватом, чтобы в нижней точке межу плечом и предплечьем был прямой угол.",
                       "2. На вдохе - опускайте штангу вниз, пока не коснетесь середины груди. Задержитесь ненадолго.",
                       "3. На выдохе - поднимите штангу в исходное положение. Старайтесь выполнять упражнение только усилиями мышц груди."]
    
    //15.сведение рук в кроссовере
    let cableCrossover: Exercise = Exercise()
    cableCrossover.identifier = 14
    cableCrossover.title = "Сведение рук в кроссовере"
    cableCrossover.difficulty = "Легко"
    cableCrossover.muscles = ["Грудь","Плечи"]
    cableCrossover.thumbnails = [#imageLiteral(resourceName: "cableCrossover_0"),#imageLiteral(resourceName: "cableCrossover_1"),#imageLiteral(resourceName: "cableCrossover_2"),#imageLiteral(resourceName: "cableCrossover_3"),#imageLiteral(resourceName: "cableCrossover_4"),#imageLiteral(resourceName: "cableCrossover_5"),#imageLiteral(resourceName: "cableCrossover_6"),#imageLiteral(resourceName: "cableCrossover_7"),#imageLiteral(resourceName: "cableCrossover_8"),#imageLiteral(resourceName: "cableCrossover_9"),#imageLiteral(resourceName: "cableCrossover_10"),#imageLiteral(resourceName: "cableCrossover_11")]
    cableCrossover.images = [#imageLiteral(resourceName: "cableCrossoverBig_0"),#imageLiteral(resourceName: "cableCrossoverBig_1"),#imageLiteral(resourceName: "cableCrossoverBig_2"),#imageLiteral(resourceName: "cableCrossoverBig_3"),#imageLiteral(resourceName: "cableCrossoverBig_4"),#imageLiteral(resourceName: "cableCrossoverBig_5"),#imageLiteral(resourceName: "cableCrossoverBig_6"),#imageLiteral(resourceName: "cableCrossoverBig_7"),#imageLiteral(resourceName: "cableCrossoverBig_8"),#imageLiteral(resourceName: "cableCrossoverBig_9"),#imageLiteral(resourceName: "cableCrossoverBig_10"),#imageLiteral(resourceName: "cableCrossoverBig_11")]
    cableCrossover.duration = 1.5
    cableCrossover.isFavourite = false
    cableCrossover.text = ["1. Выставьте на блоках тросового тренажера необходимый вес, возьмите рукоятки троса в каждую руку. Встаньте строго по центру конструкции.",
                           "2. Исходное положение: сделайте шаг и немного наклонитесь вперед. Разведите руки в стороны максимально растягивая грудные мышцы. Локти немного согнуты.",
                           "3. На выдохе - по широкой дуге тяните рукояти к центру туловища. Следите, чтобы движение происходило только за счет плечевого сустава, руки и туловище должны быть неподвижны на протяжении всего упражнения.",
                           "4. На вдохе - медленно вернитесь по в исходное положение до легкого растяжения в пекторальных."]
    
    //16.отжимания на брусьях
    let dips: Exercise = Exercise()
    dips.identifier = 15
    dips.title = "Отжимания на брусьях"
    dips.difficulty = "Легко"
    dips.muscles = ["Трицепс","Грудь","Плечи"]
    dips.thumbnails = [#imageLiteral(resourceName: "dips_0"),#imageLiteral(resourceName: "dips_1"),#imageLiteral(resourceName: "dips_2"),#imageLiteral(resourceName: "dips_3"),#imageLiteral(resourceName: "dips_4"),#imageLiteral(resourceName: "dips_5"),#imageLiteral(resourceName: "dips_6"),#imageLiteral(resourceName: "dips_7"),#imageLiteral(resourceName: "dips_8"),#imageLiteral(resourceName: "dips_9")]
    dips.images = [#imageLiteral(resourceName: "dipsBig_0"),#imageLiteral(resourceName: "dipsBig_1"),#imageLiteral(resourceName: "dipsBig_2"),#imageLiteral(resourceName: "dipsBig_3"),#imageLiteral(resourceName: "dipsBig_4"),#imageLiteral(resourceName: "dipsBig_5"),#imageLiteral(resourceName: "dipsBig_6"),#imageLiteral(resourceName: "dipsBig_7"),#imageLiteral(resourceName: "dipsBig_8"),#imageLiteral(resourceName: "dipsBig_9")]
    dips.duration = 1.5
    dips.isFavourite = false
    dips.text = ["1. Исходное положение – на брусьях удерживайте тело  на вытянутых руках.",
                 "2. На вдохе - опуститесь вниз. Тело держите прямо, локти как можно ближе к телу. В нижней точке руки должны быть согнуты в локтях под прямым углом.",
                 "3. На выдохе - усилием трицепса вернитесь в исходное положение."]
    
    //17.скручивания на наклонной скамье
    let inclineSitUp: Exercise = Exercise()
    inclineSitUp.identifier = 16
    inclineSitUp.title = "Скручивания на наклонной скамье"
    inclineSitUp.difficulty = "Легко"
    inclineSitUp.muscles = ["Пресс","Низ спины"]
    inclineSitUp.thumbnails = [#imageLiteral(resourceName: "inclineSitUp_0"),#imageLiteral(resourceName: "inclineSitUp_1"),#imageLiteral(resourceName: "inclineSitUp_2"),#imageLiteral(resourceName: "inclineSitUp_3"),#imageLiteral(resourceName: "inclineSitUp_4"),#imageLiteral(resourceName: "inclineSitUp_5"),#imageLiteral(resourceName: "inclineSitUp_6"),#imageLiteral(resourceName: "inclineSitUp_7"),#imageLiteral(resourceName: "inclineSitUp_8"),#imageLiteral(resourceName: "inclineSitUp_9"),#imageLiteral(resourceName: "inclineSitUp_10"),#imageLiteral(resourceName: "inclineSitUp_11")]
    inclineSitUp.images = [#imageLiteral(resourceName: "inclineSitUpBig_0"),#imageLiteral(resourceName: "inclineSitUpBig_1"),#imageLiteral(resourceName: "inclineSitUpBig_2"),#imageLiteral(resourceName: "inclineSitUpBig_3"),#imageLiteral(resourceName: "inclineSitUpBig_4"),#imageLiteral(resourceName: "inclineSitUpBig_5"),#imageLiteral(resourceName: "inclineSitUpBig_6"),#imageLiteral(resourceName: "inclineSitUpBig_7"),#imageLiteral(resourceName: "inclineSitUpBig_8"),#imageLiteral(resourceName: "inclineSitUpBig_9"),#imageLiteral(resourceName: "inclineSitUpBig_10"),#imageLiteral(resourceName: "inclineSitUpBig_11")]
    inclineSitUp.duration = 1.6
    inclineSitUp.isFavourite = false
    inclineSitUp.text = ["1. Займите положение на наклонной скамье – ноги согните в коленях, ступни зацепите за упоры.",
                         "2. Исходное положение - лягте на спину, поясница прижата к скамье. Руки за головой (или перед грудью), кисти взяты в \"замок\", локти разведены.",
                         "3. На выдохе - усилием мышцы пресса переместите верхнюю часть туловища к коленям (туловище прижато или близко к коленям). Задержитесь на секунду.",
                         "4. На вдохе –плавно вернитесь в исходное состояние."]
    
    //18.подъём ног в тренажёре
    let kneeRaise: Exercise = Exercise()
    kneeRaise.identifier = 17
    kneeRaise.title = "Подъём ног в тренажёре"
    kneeRaise.difficulty = "Легко"
    kneeRaise.muscles = ["Пресс","Низ спины"]
    kneeRaise.thumbnails = [#imageLiteral(resourceName: "kneeRaise_0"),#imageLiteral(resourceName: "kneeRaise_1"),#imageLiteral(resourceName: "kneeRaise_2"),#imageLiteral(resourceName: "kneeRaise_3"),#imageLiteral(resourceName: "kneeRaise_4"),#imageLiteral(resourceName: "kneeRaise_5"),#imageLiteral(resourceName: "kneeRaise_6"),#imageLiteral(resourceName: "kneeRaise_7"),#imageLiteral(resourceName: "kneeRaise_8"),#imageLiteral(resourceName: "kneeRaise_9"),#imageLiteral(resourceName: "kneeRaise_10"),#imageLiteral(resourceName: "kneeRaise_11")]
    kneeRaise.images = [#imageLiteral(resourceName: "kneeRaiseBig_0"),#imageLiteral(resourceName: "kneeRaiseBig_1"),#imageLiteral(resourceName: "kneeRaiseBig_2"),#imageLiteral(resourceName: "kneeRaiseBig_3"),#imageLiteral(resourceName: "kneeRaiseBig_4"),#imageLiteral(resourceName: "kneeRaiseBig_5"),#imageLiteral(resourceName: "kneeRaiseBig_6"),#imageLiteral(resourceName: "kneeRaiseBig_7"),#imageLiteral(resourceName: "kneeRaiseBig_8"),#imageLiteral(resourceName: "kneeRaiseBig_9"),#imageLiteral(resourceName: "kneeRaiseBig_10"),#imageLiteral(resourceName: "kneeRaiseBig_11")]
    kneeRaise.duration = 1.5
    kneeRaise.isFavourite = false
    kneeRaise.text = ["1. Исходное положение - займите позицию в тренажере, возьмитесь за рукоятки. Руки согнуты под прямым углом. Плечи расправлены, поясница прижата к тренажеру, туловище выпрямлено.",
                      "2. На выдохе - поднимайте колени вверх, в направлении к груди. Можете задержаться в крайней точке.",
                      "3. На выдохе – вернитесь в исходное положение."]
    
    //19.попеременный подъём гантелей на бицепс хватом «молоток»
    let hummerCurl: Exercise = Exercise()
    hummerCurl.identifier = 18
    hummerCurl.title = "Попеременный подъём гантелей на бицепс хватом \"молоток\""
    hummerCurl.difficulty = "Легко"
    hummerCurl.muscles = ["Бицепс","Предплечья"]
    hummerCurl.thumbnails = [#imageLiteral(resourceName: "hummerCurl_0"),#imageLiteral(resourceName: "hummerCurl_1"),#imageLiteral(resourceName: "hummerCurl_2"),#imageLiteral(resourceName: "hummerCurl_3"),#imageLiteral(resourceName: "hummerCurl_4"),#imageLiteral(resourceName: "hummerCurl_5"),#imageLiteral(resourceName: "hummerCurl_6"),#imageLiteral(resourceName: "hummerCurl_7"),#imageLiteral(resourceName: "hummerCurl_8"),#imageLiteral(resourceName: "hummerCurl_9"),#imageLiteral(resourceName: "hummerCurl_10"),#imageLiteral(resourceName: "hummerCurl_11"),#imageLiteral(resourceName: "hummerCurl_12"),#imageLiteral(resourceName: "hummerCurl_13")]
    hummerCurl.images = [#imageLiteral(resourceName: "hummerCurlBig_0"),#imageLiteral(resourceName: "hummerCurlBig_1"),#imageLiteral(resourceName: "hummerCurlBig_2"),#imageLiteral(resourceName: "hummerCurlBig_3"),#imageLiteral(resourceName: "hummerCurlBig_4"),#imageLiteral(resourceName: "hummerCurlBig_5"),#imageLiteral(resourceName: "hummerCurlBig_6"),#imageLiteral(resourceName: "hummerCurlBig_7"),#imageLiteral(resourceName: "hummerCurlBig_8"),#imageLiteral(resourceName: "hummerCurlBig_9"),#imageLiteral(resourceName: "hummerCurlBig_10"),#imageLiteral(resourceName: "hummerCurlBig_11")]
    hummerCurl.duration = 1.7
    hummerCurl.isFavourite = false
    hummerCurl.text = ["1. Возьмите гантели с нужным весом в каждую руку. Встаньте прямо.",
                       "2. сходное положение: руки опущены вниз, ладони внутрь, локти прижаты к туловищу, спина прямая.",
                       "3. На выдохе – сгибайте руку в локте, усилием бицепса поднимая гантели. Поднимайте гантель максимально высоко, до полного сокращения бицепса (примерно на уровне плеча). Руки от плеча до локтя должны быть неподвижны.",
                       "4. На вдохе - верните гантели в исходное положение."]
    
    //20.разгибания рук на трицепс на верхнем блоке
    let triceps: Exercise = Exercise()
    triceps.identifier = 19
    triceps.title = "Разгибания рук на трицепс на верхнем блоке"
    triceps.difficulty = "Легко"
    triceps.muscles = ["Трицепс"]
    triceps.thumbnails = [#imageLiteral(resourceName: "tricepsPushdown_0"),#imageLiteral(resourceName: "tricepsPushdown_1"),#imageLiteral(resourceName: "tricepsPushdown_2"),#imageLiteral(resourceName: "tricepsPushdown_3"),#imageLiteral(resourceName: "tricepsPushdown_4"),#imageLiteral(resourceName: "tricepsPushdown_5"),#imageLiteral(resourceName: "tricepsPushdown_6"),#imageLiteral(resourceName: "tricepsPushdown_7"),#imageLiteral(resourceName: "tricepsPushdown_8"),#imageLiteral(resourceName: "tricepsPushdown_9")]
    triceps.images = [#imageLiteral(resourceName: "tricepsPushdownBig_0"),#imageLiteral(resourceName: "tricepsPushdownBig_1"),#imageLiteral(resourceName: "tricepsPushdownBig_2"),#imageLiteral(resourceName: "tricepsPushdownBig_3"),#imageLiteral(resourceName: "tricepsPushdownBig_4"),#imageLiteral(resourceName: "tricepsPushdownBig_5"),#imageLiteral(resourceName: "tricepsPushdownBig_6"),#imageLiteral(resourceName: "tricepsPushdownBig_7"),#imageLiteral(resourceName: "tricepsPushdownBig_8"),#imageLiteral(resourceName: "tricepsPushdownBig_9")]
    triceps.duration = 1.5
    triceps.isFavourite = false
    triceps.text = ["1. Нагрузите тросовый тренажер необходимым весом. Возьмитесь за рукоять, присоединенную к тросу верхнего блока хватом сверху, немного уже ширины плеч.",
                    "2. Исходное положение – потяните рукоять тренажера вниз и прижмите локти к туловищу. Слегка наклонитесь вперед и немного согните колени. Руки согнуты в локтях, предплечья параллельны полу и обращены к тренажеру, а часть рук от локтя и выше должна быть перпендикулярна полу.",
                    "3. На выдохе: держа неподвижной часть руки от плеча до локтя, полностью разогните руки опуская рукоять вниз, касаясь бедер. Рука от плеча до локтя неподвижна. Задержитесь на секунду в этом положении.",
                    "4. На вдохе: медленно верните рукоять исходное положение."]
    
    //для начинающих
    let forBeginers: Program = Program()
    forBeginers.identifier = 0
    forBeginers.title = "Для новичков"
    forBeginers.forMuscles = ["quads"]
    forBeginers.image = #imageLiteral(resourceName: "forBeginers")
    forBeginers.cost = "Бесплатно".uppercased()
    
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
    forWeightLoss.title = "Для снижения веса"
    forWeightLoss.image = #imageLiteral(resourceName: "forWeightLoss")
    forWeightLoss.cost = "Бесплатно".uppercased()
    
    forWeightLoss.addToExercises(runningMachine)
    forWeightLoss.addToExercises(ellipticalMachine)
    forWeightLoss.addToExercises(kneeRaise)
    forWeightLoss.addToExercises(hummerCurl)
    forWeightLoss.addToExercises(triceps)
    forWeightLoss.addToExercises(behindPress)
    
    //общеукрепляющая
    let general: Program = Program()
    general.identifier = 2
    general.title = "Общеукрепляющая"
    general.image = #imageLiteral(resourceName: "general")
    general.cost = "Бесплатно".uppercased()
    
    general.addToExercises(dips)
    general.addToExercises(pullUp)
    general.addToExercises(deadlift)
    general.addToExercises(barbellSquat)
    general.addToExercises(legPress)
    general.addToExercises(benchPress)
    general.addToExercises(hummerCurl)
    general.addToExercises(triceps)
    
    //упругие ягодицы
    let elasticButtocks: Program = Program()
    elasticButtocks.identifier = 3
    elasticButtocks.title = "Упругие ягодицы"
    elasticButtocks.image = #imageLiteral(resourceName: "elasticButtocks")
    elasticButtocks.cost = "Бесплатно".uppercased()
    
    elasticButtocks.addToExercises(barbellSquat)
    elasticButtocks.addToExercises(legPress)
    elasticButtocks.addToExercises(ellipticalMachine)
    elasticButtocks.addToExercises(deadlift)
    
    //для профессионалов
    let forProfessionals: Program = Program()
    forProfessionals.identifier = 4
    forProfessionals.title = "Для профессионалов"
    forProfessionals.image = #imageLiteral(resourceName: "forProfessionals")
    forProfessionals.cost = "Бесплатно".uppercased()
    
    forProfessionals.addToExercises(benchPress)
    forProfessionals.addToExercises(cableCrossover)
    forProfessionals.addToExercises(overhead)
    forProfessionals.addToExercises(dumbbell)
    forProfessionals.addToExercises(deadlift)
    forProfessionals.addToExercises(bentOver)
    forProfessionals.addToExercises(behindPress)
    
    //изящная фигура
    let neatFigure: Program = Program()
    neatFigure.identifier = 5
    neatFigure.title = "Изящная фигура"
    neatFigure.image = #imageLiteral(resourceName: "neatFigure")
    neatFigure.cost = "Бесплатно".uppercased()
    
    neatFigure.addToExercises(ellipticalMachine)
    neatFigure.addToExercises(barbellSquat)
    neatFigure.addToExercises(legPress)
    neatFigure.addToExercises(deadlift)
    neatFigure.addToExercises(triceps)
    neatFigure.addToExercises(inclineSitUp)
    neatFigure.addToExercises(kneeRaise)
    
    
    //рельефный пресс
    let sixpackAbs: Program = Program()
    sixpackAbs.identifier = 6
    sixpackAbs.title = "Рельефный пресс"
    sixpackAbs.image = #imageLiteral(resourceName: "sixpackAbs")
    sixpackAbs.cost = "Бесплатно".uppercased()
    
    sixpackAbs.addToExercises(inclineSitUp)
    sixpackAbs.addToExercises(kneeRaise)
    sixpackAbs.addToExercises(dips)
    sixpackAbs.addToExercises(pullUp)
    
    //для бодибилдеров
    let forBodybuilders: Program = Program()
    forBodybuilders.identifier = 7
    forBodybuilders.title = "Для бодибилдеров"
    forBodybuilders.image = #imageLiteral(resourceName: "forBodybuilders")
    forBodybuilders.cost = "Бесплатно".uppercased()
    
    forBodybuilders.addToExercises(dips)
    forBodybuilders.addToExercises(pullUp)
    forBodybuilders.addToExercises(deadlift)
    forBodybuilders.addToExercises(barbellSquat)
    forBodybuilders.addToExercises(legPress)
    forBodybuilders.addToExercises(benchPress)
    forBodybuilders.addToExercises(hummerCurl)
    forBodybuilders.addToExercises(triceps)

    CoreDataManager.saveContext()
    
    UserDefaults.standard.set(true, forKey: "dataInitialized")
}


