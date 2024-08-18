//
//  QuizBrain.swift
//  Quizzer
//
//  Created by Milan Garain on 18/08/24.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "is 2 + 5 is 7?", a: "True"),
        Question(q: "is 3 + 7 is 9?", a: "False"),
        Question(q: "is 3 + 7 is 9?", a: "False"),
        Question(q: "is 3 + 7 is 9?", a: "False"),
        Question(q: "is 3 + 7 is 9?", a: "False"),
        Question(q: "is 3 + 7 is 9?", a: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        var isCorrect = false
        if userAnswer == quiz[questionNumber].answer {
            isCorrect = true
            score += 1
        }
        return isCorrect
    }
    
    func getQuestionText () -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress () -> Float {
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    
    func getScore () -> Int {
        return score
    }
    
    mutating func nextQuestion () {
        questionNumber += 1
        if (questionNumber == quiz.count) {
            questionNumber = 0
            score = 0
        }
    }

}
