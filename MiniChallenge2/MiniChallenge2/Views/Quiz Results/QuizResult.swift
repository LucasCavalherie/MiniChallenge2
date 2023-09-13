//
//  QuizResult.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 11/09/23.
//

import SwiftUI

struct QuizResult: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    @ObservedObject var quizController = QuizController.shared
    
    @State private var selectedTheme = "Erros"
    

    var body: some View {
        ZStack {
            Image("Pattern")
                .resizable(resizingMode: .tile)
                .ignoresSafeArea()
            
            VStack {
                NavBarQuiz()
                
                Image("QuizResult")
                
                Text("Aprenda com seus erros!")
                    .font(.title2)
                    .foregroundColor(Color("White"))
                    .fontWeight(.bold)
                
                VStack {
                    Picker("Appearance", selection: $selectedTheme) {
                        ForEach(["Erros", "Acertos"], id: \.self) {
                            Text($0)
                                .font(.title)
                        }
                    }
                    .colorMultiply(selectedTheme == "Erros" ? Color("Red") : Color("Green"))
                    .pickerStyle(.segmented)
                    .padding(.bottom)
                    .foregroundColor(.blue)
                    .environment(\.colorScheme, .light)
                    .preferredColorScheme(.light)
                    
                    ScrollView (showsIndicators: false) {
                        if selectedTheme == "Erros" {
                            ForEach(quizController.quiz.questionsAnswered) { question in
                                if !question.answered!.correct {
                                    ExpandableAnswer(question: question)
                                }
                            }
                        } else if selectedTheme == "Acertos" {
                            ForEach(quizController.quiz.questionsAnswered) { question in
                                if question.answered!.correct {
                                    ExpandableAnswer(question: question)
                                }
                            }
                        }
                        
                        Button {
                            SoundController.shared.play(sound: .clickFast)
                            routerController.addKeyToViewStack(viewKey: "Rank")
                        } label: {
                            Text("Ver o Ranking")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("White"))
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                        }
                        .background(Color("Orange"))
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                    }
                }
                .padding()
            }
        }
    }
}

struct QuizResult_Previews: PreviewProvider {
    static var previews: some View {
        QuizResult()
    }
}
