//
//  GameSequence.swift
//  socialistTriviaApp


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
