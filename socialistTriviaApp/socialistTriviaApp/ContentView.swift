//
//  ContentView.swift
//  socialistTriviaApp
//
//  Created by JPL-ST-SPRING2021 on 12/14/21.
//  Copyright © 2021 Willie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            
            NavigationView {
                VStack {
                    
                    Text("Socialist Trivia App")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Spacer()

                    NavigationLink(
                        destination: Quiz1920View())
                    {
                        Text("1920s")
                            .font(.headline)
                    }
                    
                    Spacer()
                    Text("more to come")
                        .font(.body)
                    Spacer()
                }
            }
    }
}

struct QuizScore {
    let userName: String
    var userScore: Int
}
   

struct Quiz1920View: View {
    
  //  @State var currentScores: [QuizScore] = []
    
    @StateObject var viewModel = GameViewModel()
    
    @State var userGuessIndex: Int? = nil
    
    var body: some View {
    VStack
        {
            Text("1920s Quiz Here")
            Spacer()
            Text("Question 1 / 2")
            Spacer()
            Text(viewModel.questionText)
            Spacer()
            Spacer()
            HStack{
                ForEach(viewModel.answerIndices){ index in
                    Button(action: {
                        self.userGuessIndex = index
                        print("selected")
                    }) {
                        Text(self.viewModel.answerText(for: index))
                            .disabled(self.userGuessIndex != nil)
                    }
                }
            }
            if userGuessIndex != nil {
                Bottom(){
                    self.viewModel.advanceGameState()
                };
            }
    }
    }
    
    
    
}

struct Question {
    let questionText: String
    let answersAvailable: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "Lenin joined the Bolsheviks when?", answersAvailable: ["1917", "1895", "1900", "1848"], correctAnswerIndex: 1),
        Question(questionText: "Trotsky joined the Bolsheviks when?", answersAvailable: ["1917", "1895", "1900", "1848"], correctAnswerIndex: 0),
        Question(questionText: "When was Karl Marx born?", answersAvailable: ["1917", "1895", "1900", "1826"], correctAnswerIndex: 3),
        
        
    ]
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
