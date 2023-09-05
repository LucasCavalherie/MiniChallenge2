//
//  QuizView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct QuizView: View {
    @ObservedObject var quizController = QuizController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    
    var body: some View{
        VStack{
            if quizController.timeFinished{
                RankView()
            } else {
                VStack {
                    NavBarQuiz()
                    
                    VStack{
                        Spacer()
                        
                        Countdown(counter: $quizController.timer, countTo: quizController.totalTime){
                            championshipController.finishChampionship()
                            quizController.timeFinished = true
                        }

                        VStack(spacing: 16){
                            VStack(spacing: 8){
                                Text("Pergunta \(quizController.quiz.total):")
                                    .font(.subheadline)
                                    .foregroundColor(Color("DarkGray"))
                                    .fontWeight(.semibold)
                                
                                Text(quizController.question.text)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    .frame(height: 100)
                            }
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(Color("White"))
                        .cornerRadius(12)
                        .padding(.bottom, 36)

                        VStack(spacing: 16){
                            ForEach(quizController.question.answers) { answer in
                                AnswerButton(answer: .constant(answer)){
                                    quizController.answeringTheQuestion(answer: answer)
                                }
                            }
                        }

                        Spacer()
                    }
                    .padding(.horizontal, 24)
                    .onAppear{quizController.generateFirstQuestion()}
                    .background(Color("Blue"))
                    .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
