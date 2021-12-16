//
//  GameSequence.swift
//  socialistTriviaApp
//
//  Created by JPL-ST-SPRING2021 on 12/15/21.
//  Copyright © 2021 Willie. All rights reserved.
//

import Foundation

struct GameSequence{
    
    private let questions = Question.allQuestions.shuffled()
    
    private var currentQuestionIndex = 0;
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        currentQuestionIndex = nextQuestionIndex
    }
    
}
