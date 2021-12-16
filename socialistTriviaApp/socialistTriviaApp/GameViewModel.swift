//
//  GameViewModel.swift
//  socialistTriviaApp
//
//  Created by JPL-ST-SPRING2021 on 12/15/21.
//  Copyright © 2021 Willie. All rights reserved.
//

import Foundation

class GameViewModel: ObservableObject {
    
   @Published var game = GameSequence()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.answersAvailable
        .indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    func answerText (for index: Int) -> String {
        game.currentQuestion.answersAvailable[index]
    }
    
    func advanceGameState(){
        game.advanceGameState()
    }
    
    
    
}
