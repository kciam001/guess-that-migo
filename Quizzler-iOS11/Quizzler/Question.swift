//
//  Question.swift
//  Quizzler
//
//  Created by Kevin Ciampaglia on 1/22/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : String
    
    init(text: String, correctAnswer: String) {
        questionText = text
        answer = correctAnswer
    }
}
