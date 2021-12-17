//
//  GameViewModel.swift
//  socialistTriviaApp
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
