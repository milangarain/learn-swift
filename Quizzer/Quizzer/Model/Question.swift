//
//  Question.swift
//  Quizzer
//
//  Created by Milan Garain on 18/08/24.
//

import Foundation

struct Question {
    var question : String
    var answer : String
    
    init(q : String, a : String) {
        self.question = q
        self.answer = a
    }
}
