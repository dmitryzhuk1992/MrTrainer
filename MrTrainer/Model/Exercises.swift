//
//  Exercises.swift
//  MrTrainer
//
//  Created by Dmitriy Zhuk on 30.10.17.
//  Copyright © 2017 Dmitriy Zhuk. All rights reserved.
//

import Foundation
import UIKit

struct Exercise {
    let index: Int
    let name: String
    let muscles: [String]
    let difficulty: String
    let thumbnails: [UIImage]
    let duration: Double
    let images: [UIImage]
}

struct Exercises {
    
    static let numberOfExercises = 20

    //эллиптический тренажёр
    private static let ellipticalMachine: Exercise = Exercise(index: 0, name: "Elliptical Machine", muscles: [" quads "," middle back "], difficulty: " medium ", thumbnails: [#imageLiteral(resourceName: "ellips_0"),#imageLiteral(resourceName: "ellips_1"),#imageLiteral(resourceName: "ellips_2"),#imageLiteral(resourceName: "ellips_3"),#imageLiteral(resourceName: "ellips_4"),#imageLiteral(resourceName: "ellips_5"),#imageLiteral(resourceName: "ellips_6"),#imageLiteral(resourceName: "ellips_7"),#imageLiteral(resourceName: "ellips_8"),#imageLiteral(resourceName: "ellips_9"),#imageLiteral(resourceName: "ellips_10"),#imageLiteral(resourceName: "ellips_11")], duration: 1.4, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //велотренажёр
    private static let bikeMachine: Exercise = Exercise(index: 1, name: "Exercise Bikes", muscles: [" quads "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "bike_0"),#imageLiteral(resourceName: "bike_1"),#imageLiteral(resourceName: "bike_2"),#imageLiteral(resourceName: "bike_3"),#imageLiteral(resourceName: "bike_4"),#imageLiteral(resourceName: "bike_5"),#imageLiteral(resourceName: "bike_6"),#imageLiteral(resourceName: "bike_7"),#imageLiteral(resourceName: "bike_8"),#imageLiteral(resourceName: "bike_9"),#imageLiteral(resourceName: "bike_10"),#imageLiteral(resourceName: "bike_11")], duration: 1.2, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //беговая дорожка
    private static let runningMachine: Exercise = Exercise(index: 2, name: "Running Machine", muscles: [" quads "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "running_0"),#imageLiteral(resourceName: "running_1"),#imageLiteral(resourceName: "running_2"),#imageLiteral(resourceName: "running_3"),#imageLiteral(resourceName: "running_4"),#imageLiteral(resourceName: "running_5"),#imageLiteral(resourceName: "running_6"),#imageLiteral(resourceName: "running_7"),#imageLiteral(resourceName: "running_8"),#imageLiteral(resourceName: "running_9"),#imageLiteral(resourceName: "running_10")], duration: 0.8, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //тяга верхнего блока за голову
    private static let behindTheNeck: Exercise = Exercise(index: 3, name: "Behind the Neck Lat Pulldown", muscles: [" lats "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "behindTheNeck_0"),#imageLiteral(resourceName: "behindTheNeck_1"),#imageLiteral(resourceName: "behindTheNeck_2"),#imageLiteral(resourceName: "behindTheNeck_3"),#imageLiteral(resourceName: "behindTheNeck_4"),#imageLiteral(resourceName: "behindTheNeck_5"),#imageLiteral(resourceName: "behindTheNeck_6"),#imageLiteral(resourceName: "behindTheNeck_7"),#imageLiteral(resourceName: "behindTheNeck_8"),#imageLiteral(resourceName: "behindTheNeck_9"),#imageLiteral(resourceName: "behindTheNeck_10"),#imageLiteral(resourceName: "behindTheNeck_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //тяга штанги в наклоне
    private static let bentOver: Exercise = Exercise(index: 4, name: "Bent Over Barbell Row", muscles: [" middle back "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "bent_0"),#imageLiteral(resourceName: "bent_1"),#imageLiteral(resourceName: "bent_2"),#imageLiteral(resourceName: "bent_3"),#imageLiteral(resourceName: "bent_4"),#imageLiteral(resourceName: "bent_5"),#imageLiteral(resourceName: "bent_6"),#imageLiteral(resourceName: "bent_7"),#imageLiteral(resourceName: "bent_8"),#imageLiteral(resourceName: "bent_9"),#imageLiteral(resourceName: "bent_10"),#imageLiteral(resourceName: "bent_11")], duration: 1.6, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //становая тяга
    private static let deadlift: Exercise = Exercise(index: 5, name: "Deadlift", muscles: [" quads "], difficulty: " medium ", thumbnails: [#imageLiteral(resourceName: "deadlift_0"),#imageLiteral(resourceName: "deadlift_1"),#imageLiteral(resourceName: "deadlift_2"),#imageLiteral(resourceName: "deadlift_3"),#imageLiteral(resourceName: "deadlift_4"),#imageLiteral(resourceName: "deadlift_5"),#imageLiteral(resourceName: "deadlift_6"),#imageLiteral(resourceName: "deadlift_7"),#imageLiteral(resourceName: "deadlift_8"),#imageLiteral(resourceName: "deadlift_9"),#imageLiteral(resourceName: "deadlift_10"),#imageLiteral(resourceName: "deadlift_11")], duration: 1.6, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //подтягивания
    private static let pullUp: Exercise = Exercise(index: 6, name: "Pull Up", muscles: ["lats"], difficulty: " medium ", thumbnails: [#imageLiteral(resourceName: "pullUp_0"),#imageLiteral(resourceName: "pullUp_1"),#imageLiteral(resourceName: "pullUp_2"),#imageLiteral(resourceName: "pullUp_3"),#imageLiteral(resourceName: "pullUp_4"),#imageLiteral(resourceName: "pullUp_5"),#imageLiteral(resourceName: "pullUp_6"),#imageLiteral(resourceName: "pullUp_7"),#imageLiteral(resourceName: "pullUp_8"),#imageLiteral(resourceName: "pullUp_9"),#imageLiteral(resourceName: "pullUp_10"),#imageLiteral(resourceName: "pullUp_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //жим штанги из-за головы в машине Смита
    private static let behindPress: Exercise = Exercise(index: 7, name: "Behind the Neck Press", muscles: [" shoulders "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "behindPress_0"),#imageLiteral(resourceName: "behindPress_1"),#imageLiteral(resourceName: "behindPress_2"),#imageLiteral(resourceName: "behindPress_3"),#imageLiteral(resourceName: "behindPress_4"),#imageLiteral(resourceName: "behindPress_5"),#imageLiteral(resourceName: "behindPress_6"),#imageLiteral(resourceName: "behindPress_7"),#imageLiteral(resourceName: "behindPress_8"),#imageLiteral(resourceName: "behindPress_9"),#imageLiteral(resourceName: "behindPress_10"),#imageLiteral(resourceName: "behindPress_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //разведение рук с гантелями в стороны
    private static let dumbbell: Exercise = Exercise(index: 8, name: "Dumbbell Side Raise", muscles: [" shoulders "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "dumbbell_0"),#imageLiteral(resourceName: "dumbbell_1"),#imageLiteral(resourceName: "dumbbell_2"),#imageLiteral(resourceName: "dumbbell_3"),#imageLiteral(resourceName: "dumbbell_4"),#imageLiteral(resourceName: "dumbbell_5"),#imageLiteral(resourceName: "dumbbell_6"),#imageLiteral(resourceName: "dumbbell_7"),#imageLiteral(resourceName: "dumbbell_8"),#imageLiteral(resourceName: "dumbbell_9"),#imageLiteral(resourceName: "dumbbell_10"),#imageLiteral(resourceName: "dumbbell_11")], duration: 1.7, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //армейский жим стоя
    private static let overhead: Exercise = Exercise(index: 9, name: "Overhead Barbell Press", muscles: [" shoulders "], difficulty: " hard "/*medium*/, thumbnails: [#imageLiteral(resourceName: "overhead_0"),#imageLiteral(resourceName: "overhead_1"),#imageLiteral(resourceName: "overhead_2"),#imageLiteral(resourceName: "overhead_3"),#imageLiteral(resourceName: "overhead_4"),#imageLiteral(resourceName: "overhead_5"),#imageLiteral(resourceName: "overhead_6"),#imageLiteral(resourceName: "overhead_7"),#imageLiteral(resourceName: "overhead_8"),#imageLiteral(resourceName: "overhead_9"),#imageLiteral(resourceName: "overhead_10")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //вертикальная тяга штанги
    private static let rearUpright: Exercise = Exercise(index: 10, name: "Rear Upright Row", muscles: [" shoulders "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "rearUpright_0"),#imageLiteral(resourceName: "rearUpright_1"),#imageLiteral(resourceName: "rearUpright_2"),#imageLiteral(resourceName: "rearUpright_3"),#imageLiteral(resourceName: "rearUpright_4"),#imageLiteral(resourceName: "rearUpright_5"),#imageLiteral(resourceName: "rearUpright_6"),#imageLiteral(resourceName: "rearUpright_7"),#imageLiteral(resourceName: "rearUpright_8"),#imageLiteral(resourceName: "rearUpright_9"),#imageLiteral(resourceName: "rearUpright_10"),#imageLiteral(resourceName: "rearUpright_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //приседания со штангой
    private static let barbellSquat: Exercise = Exercise(index: 11, name: "Barbell Squat", muscles: [" quads "], difficulty: " medium ", thumbnails: [#imageLiteral(resourceName: "barbellSquart_0"),#imageLiteral(resourceName: "barbellSquart_1"),#imageLiteral(resourceName: "barbellSquart_2"),#imageLiteral(resourceName: "barbellSquart_3"),#imageLiteral(resourceName: "barbellSquart_4"),#imageLiteral(resourceName: "barbellSquart_5"),#imageLiteral(resourceName: "barbellSquart_6"),#imageLiteral(resourceName: "barbellSquart_7"),#imageLiteral(resourceName: "barbellSquart_8"),#imageLiteral(resourceName: "barbellSquart_9"),#imageLiteral(resourceName: "barbellSquart_10"),#imageLiteral(resourceName: "barbellSquart_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //жим ногами
    private static let legPress: Exercise = Exercise(index: 12, name: "Leg Press", muscles: [" quads "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "legPress_0"),#imageLiteral(resourceName: "legPress_1"),#imageLiteral(resourceName: "legPress_2"),#imageLiteral(resourceName: "legPress_3"),#imageLiteral(resourceName: "legPress_4"),#imageLiteral(resourceName: "legPress_5"),#imageLiteral(resourceName: "legPress_6"),#imageLiteral(resourceName: "legPress_7"),#imageLiteral(resourceName: "legPress_8"),#imageLiteral(resourceName: "legPress_9"),#imageLiteral(resourceName: "legPress_10")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //жим лёжа на скамье
    private static let benchPress: Exercise = Exercise(index: 13, name: "Bench Press", muscles: [" chest "], difficulty: " medium ", thumbnails: [#imageLiteral(resourceName: "benchPress_0"),#imageLiteral(resourceName: "benchPress_1"),#imageLiteral(resourceName: "benchPress_2"),#imageLiteral(resourceName: "benchPress_3"),#imageLiteral(resourceName: "benchPress_4"),#imageLiteral(resourceName: "benchPress_5"),#imageLiteral(resourceName: "benchPress_6"),#imageLiteral(resourceName: "benchPress_7"),#imageLiteral(resourceName: "benchPress_8"),#imageLiteral(resourceName: "benchPress_9")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //сведение рук в кроссовере
    private static let cableCrossover: Exercise = Exercise(index: 14, name: "Cable Crossover", muscles: [" chest "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "cableCrossover_0"),#imageLiteral(resourceName: "cableCrossover_1"),#imageLiteral(resourceName: "cableCrossover_2"),#imageLiteral(resourceName: "cableCrossover_3"),#imageLiteral(resourceName: "cableCrossover_4"),#imageLiteral(resourceName: "cableCrossover_5"),#imageLiteral(resourceName: "cableCrossover_6"),#imageLiteral(resourceName: "cableCrossover_7"),#imageLiteral(resourceName: "cableCrossover_8"),#imageLiteral(resourceName: "cableCrossover_9"),#imageLiteral(resourceName: "cableCrossover_10"),#imageLiteral(resourceName: "cableCrossover_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //отжимания на брусьях
    private static let dips: Exercise = Exercise(index: 15, name: "Dips", muscles: [" triceps "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "dips_0"),#imageLiteral(resourceName: "dips_1"),#imageLiteral(resourceName: "dips_2"),#imageLiteral(resourceName: "dips_3"),#imageLiteral(resourceName: "dips_4"),#imageLiteral(resourceName: "dips_5"),#imageLiteral(resourceName: "dips_6"),#imageLiteral(resourceName: "dips_7"),#imageLiteral(resourceName: "dips_8"),#imageLiteral(resourceName: "dips_9")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //подъём туловища на наклонной скамье
    private static let inclineSitUp: Exercise = Exercise(index: 16, name: "Incline Sit-Up", muscles: [" press "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "inclineSitUp_0"),#imageLiteral(resourceName: "inclineSitUp_1"),#imageLiteral(resourceName: "inclineSitUp_2"),#imageLiteral(resourceName: "inclineSitUp_3"),#imageLiteral(resourceName: "inclineSitUp_4"),#imageLiteral(resourceName: "inclineSitUp_5"),#imageLiteral(resourceName: "inclineSitUp_6"),#imageLiteral(resourceName: "inclineSitUp_7"),#imageLiteral(resourceName: "inclineSitUp_8"),#imageLiteral(resourceName: "inclineSitUp_9"),#imageLiteral(resourceName: "inclineSitUp_10"),#imageLiteral(resourceName: "inclineSitUp_11")], duration: 1.6, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //подъём ног в тренажёре
    private static let kneeRaise: Exercise = Exercise(index: 17, name: "Knee Raise On Parallel Bars", muscles: [" press "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "kneeRaise_0"),#imageLiteral(resourceName: "kneeRaise_1"),#imageLiteral(resourceName: "kneeRaise_2"),#imageLiteral(resourceName: "kneeRaise_3"),#imageLiteral(resourceName: "kneeRaise_4"),#imageLiteral(resourceName: "kneeRaise_5"),#imageLiteral(resourceName: "kneeRaise_6"),#imageLiteral(resourceName: "kneeRaise_7"),#imageLiteral(resourceName: "kneeRaise_8"),#imageLiteral(resourceName: "kneeRaise_9"),#imageLiteral(resourceName: "kneeRaise_10"),#imageLiteral(resourceName: "kneeRaise_11")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //попеременный подъём гантелей на бицепс хватом «молоток»
    private static let hummerCurl: Exercise = Exercise(index: 18, name: "Alternate Hammer Curl", muscles: [" biceps "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "hummerCurl_0"),#imageLiteral(resourceName: "hummerCurl_1"),#imageLiteral(resourceName: "hummerCurl_2"),#imageLiteral(resourceName: "hummerCurl_3"),#imageLiteral(resourceName: "hummerCurl_4"),#imageLiteral(resourceName: "hummerCurl_5"),#imageLiteral(resourceName: "hummerCurl_6"),#imageLiteral(resourceName: "hummerCurl_7"),#imageLiteral(resourceName: "hummerCurl_8"),#imageLiteral(resourceName: "hummerCurl_9"),#imageLiteral(resourceName: "hummerCurl_10"),#imageLiteral(resourceName: "hummerCurl_11"),#imageLiteral(resourceName: "hummerCurl_12"),#imageLiteral(resourceName: "hummerCurl_13")], duration: 1.7, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])
    //разггибания на трицепс на верхнем блоке
    private static let triceps: Exercise = Exercise(index: 19, name: "Triceps Pushdown", muscles: [" triceps "], difficulty: " easy ", thumbnails: [#imageLiteral(resourceName: "tricepsPushdown_0"),#imageLiteral(resourceName: "tricepsPushdown_1"),#imageLiteral(resourceName: "tricepsPushdown_2"),#imageLiteral(resourceName: "tricepsPushdown_3"),#imageLiteral(resourceName: "tricepsPushdown_4"),#imageLiteral(resourceName: "tricepsPushdown_5"),#imageLiteral(resourceName: "tricepsPushdown_6"),#imageLiteral(resourceName: "tricepsPushdown_7"),#imageLiteral(resourceName: "tricepsPushdown_8"),#imageLiteral(resourceName: "tricepsPushdown_9")], duration: 1.5, images: [#imageLiteral(resourceName: "ellipsBig_0"),#imageLiteral(resourceName: "ellipsBig_1"),#imageLiteral(resourceName: "ellipsBig_2"),#imageLiteral(resourceName: "ellipsBig_3"),#imageLiteral(resourceName: "ellipsBig_4"),#imageLiteral(resourceName: "ellipsBig_5"),#imageLiteral(resourceName: "ellipsBig_6"),#imageLiteral(resourceName: "ellipsBig_7"),#imageLiteral(resourceName: "ellipsBig_8"),#imageLiteral(resourceName: "ellipsBig_9"),#imageLiteral(resourceName: "ellipsBig_10"),#imageLiteral(resourceName: "ellipsBig_11")])

    //возвращает название упражнения по индексу
    static func getName(by index: Int) -> String {
        var name = String()
        switch index {
        case 0:
            name = Exercises.ellipticalMachine.name
        case 1:
            name = Exercises.bikeMachine.name
        case 2:
            name = Exercises.runningMachine.name
        case 3:
            name = Exercises.behindTheNeck.name
        case 4:
            name = Exercises.bentOver.name
        case 5:
            name = Exercises.deadlift.name
        case 6:
            name = Exercises.pullUp.name
        case 7:
            name = Exercises.behindPress.name
        case 8:
            name = Exercises.dumbbell.name
        case 9:
            name = Exercises.overhead.name
        case 10:
            name = Exercises.rearUpright.name
        case 11:
            name = Exercises.barbellSquat.name
        case 12:
            name = Exercises.legPress.name
        case 13:
            name = Exercises.benchPress.name
        case 14:
            name = Exercises.cableCrossover.name
        case 15:
            name = Exercises.dips.name
        case 16:
            name = Exercises.inclineSitUp.name
        case 17:
            name = Exercises.kneeRaise.name
        case 18:
            name = Exercises.hummerCurl.name
        case 19:
            name = Exercises.triceps.name
        default:
            break
        }
        return name
    }
    
    //возвращает массив картинок для анимированной миниатюры по индексу
    static func getThumbnails(by index: Int) -> [UIImage] {
        var thumbnails = [UIImage]()
        switch index {
        case 0:
            thumbnails = Exercises.ellipticalMachine.thumbnails
        case 1:
            thumbnails = Exercises.bikeMachine.thumbnails
        case 2:
            thumbnails = Exercises.runningMachine.thumbnails
        case 3:
            thumbnails = Exercises.behindTheNeck.thumbnails
        case 4:
            thumbnails = Exercises.bentOver.thumbnails
        case 5:
            thumbnails = Exercises.deadlift.thumbnails
        case 6:
            thumbnails = Exercises.pullUp.thumbnails
        case 7:
            thumbnails = Exercises.behindPress.thumbnails
        case 8:
            thumbnails = Exercises.dumbbell.thumbnails
        case 9:
            thumbnails = Exercises.overhead.thumbnails
        case 10:
            thumbnails = Exercises.rearUpright.thumbnails
        case 11:
            thumbnails = Exercises.barbellSquat.thumbnails
        case 12:
            thumbnails = Exercises.legPress.thumbnails
        case 13:
            thumbnails = Exercises.benchPress.thumbnails
        case 14:
            thumbnails = Exercises.cableCrossover.thumbnails
        case 15:
            thumbnails = Exercises.dips.thumbnails
        case 16:
            thumbnails = Exercises.inclineSitUp.thumbnails
        case 17:
            thumbnails = Exercises.kneeRaise.thumbnails
        case 18:
            thumbnails = Exercises.hummerCurl.thumbnails
        case 19:
            thumbnails = Exercises.triceps.thumbnails
        default:
            break
        }
        return thumbnails
    }
    
    //возвращает duration для анимированной миниатюры по индексу
    static func getDuration(by index: Int) -> Double {
        var duration = Double()
        switch index {
        case 0:
            duration = Exercises.ellipticalMachine.duration
        case 1:
            duration = Exercises.bikeMachine.duration
        case 2:
            duration = Exercises.runningMachine.duration
        case 3:
            duration = Exercises.behindTheNeck.duration
        case 4:
            duration = Exercises.bentOver.duration
        case 5:
            duration = Exercises.deadlift.duration
        case 6:
            duration = Exercises.pullUp.duration
        case 7:
            duration = Exercises.behindPress.duration
        case 8:
            duration = Exercises.dumbbell.duration
        case 9:
            duration = Exercises.overhead.duration
        case 10:
            duration = Exercises.rearUpright.duration
        case 11:
            duration = Exercises.barbellSquat.duration
        case 12:
            duration = Exercises.legPress.duration
        case 13:
            duration = Exercises.benchPress.duration
        case 14:
            duration = Exercises.cableCrossover.duration
        case 15:
            duration = Exercises.dips.duration
        case 16:
            duration = Exercises.inclineSitUp.duration
        case 17:
            duration = Exercises.kneeRaise.duration
        case 18:
            duration = Exercises.hummerCurl.duration
        case 19:
            duration = Exercises.triceps.duration
        default:
            break
        }
        return duration
    }
    
    //возвращает muscles по индексу
    static func getMuscles(by index: Int) -> [String] {
        var muscles = [String]()
        switch index {
        case 0:
            muscles = Exercises.ellipticalMachine.muscles
        case 1:
            muscles = Exercises.bikeMachine.muscles
        case 2:
            muscles = Exercises.runningMachine.muscles
        case 3:
            muscles = Exercises.behindTheNeck.muscles
        case 4:
            muscles = Exercises.bentOver.muscles
        case 5:
            muscles = Exercises.deadlift.muscles
        case 6:
            muscles = Exercises.pullUp.muscles
        case 7:
            muscles = Exercises.behindPress.muscles
        case 8:
            muscles = Exercises.dumbbell.muscles
        case 9:
            muscles = Exercises.overhead.muscles
        case 10:
            muscles = Exercises.rearUpright.muscles
        case 11:
            muscles = Exercises.barbellSquat.muscles
        case 12:
            muscles = Exercises.legPress.muscles
        case 13:
            muscles = Exercises.benchPress.muscles
        case 14:
            muscles = Exercises.cableCrossover.muscles
        case 15:
            muscles = Exercises.dips.muscles
        case 16:
            muscles = Exercises.inclineSitUp.muscles
        case 17:
            muscles = Exercises.kneeRaise.muscles
        case 18:
            muscles = Exercises.hummerCurl.muscles
        case 19:
            muscles = Exercises.triceps.muscles
        default:
            break
        }
        return muscles
    }
    
    //возвращает dificulty по индексу
    static func getDifficulty(by index: Int) -> String {
        var difficulty = String()
        switch index {
        case 0:
            difficulty = Exercises.ellipticalMachine.difficulty
        case 1:
            difficulty = Exercises.bikeMachine.difficulty
        case 2:
            difficulty = Exercises.runningMachine.difficulty
        case 3:
            difficulty = Exercises.behindTheNeck.difficulty
        case 4:
            difficulty = Exercises.bentOver.difficulty
        case 5:
            difficulty = Exercises.deadlift.difficulty
        case 6:
            difficulty = Exercises.pullUp.difficulty
        case 7:
            difficulty = Exercises.behindPress.difficulty
        case 8:
            difficulty = Exercises.dumbbell.difficulty
        case 9:
            difficulty = Exercises.overhead.difficulty
        case 10:
            difficulty = Exercises.rearUpright.difficulty
        case 11:
            difficulty = Exercises.barbellSquat.difficulty
        case 12:
            difficulty = Exercises.legPress.difficulty
        case 13:
            difficulty = Exercises.benchPress.difficulty
        case 14:
            difficulty = Exercises.cableCrossover.difficulty
        case 15:
            difficulty = Exercises.dips.difficulty
        case 16:
            difficulty = Exercises.inclineSitUp.difficulty
        case 17:
            difficulty = Exercises.kneeRaise.difficulty
        case 18:
            difficulty = Exercises.hummerCurl.difficulty
        case 19:
            difficulty = Exercises.triceps.difficulty
        default:
            break
        }
        return difficulty
    }
    
    //возвращает массив картинок для анимации по индексу
    static func getImages(by index: Int) -> [UIImage] {
        var images = [UIImage]()
        switch index {
        case 0:
            images = Exercises.ellipticalMachine.images
        case 1:
            images = Exercises.bikeMachine.images
        case 2:
            images = Exercises.runningMachine.images
        case 3:
            images = Exercises.behindTheNeck.images
        case 4:
            images = Exercises.bentOver.images
        case 5:
            images = Exercises.deadlift.images
        case 6:
            images = Exercises.pullUp.images
        case 7:
            images = Exercises.behindPress.images
        case 8:
            images = Exercises.dumbbell.images
        case 9:
            images = Exercises.overhead.images
        case 10:
            images = Exercises.rearUpright.images
        case 11:
            images = Exercises.barbellSquat.images
        case 12:
            images = Exercises.legPress.images
        case 13:
            images = Exercises.benchPress.images
        case 14:
            images = Exercises.cableCrossover.images
        case 15:
            images = Exercises.dips.images
        case 16:
            images = Exercises.inclineSitUp.images
        case 17:
            images = Exercises.kneeRaise.images
        case 18:
            images = Exercises.hummerCurl.images
        case 19:
            images = Exercises.triceps.images
        default:
            break
        }
        return images
    }
    
    //возвращает названия всех упражнений
//    func getAllNames() -> [String] {
//        var allNames = [String]()
//        allNames.append(ellipticalMachine.name)
//        allNames.append(bikeMachine.name)
//        allNames.append(runningMachine.name)
//        allNames.append(behindTheNeck.name)
//        allNames.append(bentOver.name)
//        allNames.append(deadlift.name)
//        allNames.append(pullUp.name)
//        allNames.append(behindPress.name)
//        allNames.append(dumbbell.name)
//        allNames.append(overhead.name)
//        allNames.append(rearUpright.name)
//        allNames.append(barbellSquat.name)
//        allNames.append(legPress.name)
//        allNames.append(benchPress.name)
//        allNames.append(cableCrossover.name)
//        allNames.append(dips.name)
//        allNames.append(inclineSitUp.name)
//        allNames.append(kneeRaise.name)
//        allNames.append(hummerCurl.name)
//        allNames.append(triceps.name)
//        return allNames
//    }

//    func getAllNamesThumbnails() -> [[String]] {
//        var allNamesThumbnails = [[String]]()
//        allNamesThumbnails.append(ellipticalMachine.namesThumbnails)
//        allNamesThumbnails.append(bikeMachine.namesThumbnails)
//        allNamesThumbnails.append(runningMachine.namesThumbnails)
//        allNamesThumbnails.append(behindTheNeck.namesThumbnails)
//        allNamesThumbnails.append(bentOver.namesThumbnails)
//        allNamesThumbnails.append(deadlift.namesThumbnails)
//        allNamesThumbnails.append(pullUp.namesThumbnails)
//        allNamesThumbnails.append(behindPress.namesThumbnails)
//        allNamesThumbnails.append(dumbbell.namesThumbnails)
//        allNamesThumbnails.append(overhead.namesThumbnails)
//        allNamesThumbnails.append(rearUpright.namesThumbnails)
//        allNamesThumbnails.append(barbellSquat.namesThumbnails)
//        allNamesThumbnails.append(legPress.namesThumbnails)
//        allNamesThumbnails.append(benchPress.namesThumbnails)
//        allNamesThumbnails.append(cableCrossover.namesThumbnails)
//        allNamesThumbnails.append(dips.namesThumbnails)
//        allNamesThumbnails.append(inclineSitUp.namesThumbnails)
//        allNamesThumbnails.append(kneeRaise.namesThumbnails)
//        allNamesThumbnails.append(hummerCurl.namesThumbnails)
//        allNamesThumbnails.append(triceps.namesThumbnails)
//        return allNamesThumbnails
//    }

}



