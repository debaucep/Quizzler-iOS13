//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by dmitry shcherba on 01.02.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


// place where all the logic is made


struct QuizBrain {
    
    let quiz = [
        Question(q: "Moscow is Russia", a: "True"),
        Question(q: "Oregon is Canada", a: "False"),
        Question(q: "China is the biggest country on territory basis", a: "False"),
        Question(q: "Moscow was founded in 1247", a: "False"),
        Question(q: "Gorbachev was the first and they only one president of the USSR", a: "True")
    ]
    
    var questionNumber = 0
    
    func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText () -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress () -> Float {
        let progress = Float (questionNumber + 1) / Float (quiz.count)
        return progress
    }
    
    mutating func nextQuestion () {
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
}
