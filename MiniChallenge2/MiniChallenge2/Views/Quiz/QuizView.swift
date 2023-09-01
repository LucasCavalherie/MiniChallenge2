//
//  QuizView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct QuizView: View {
    @ObservedObject var quizController = QuizController()
    
    var body: some View{
        VStack{
            if quizController.timeFinished{
                ResultView()
            } else {
                VStack {
                    HStack (alignment: .center) {
                        HStack {
                            Image(systemName: "xmark")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "sailboat.fill")
                                .font(.title)
                            
                            Text("Vela")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.vertical, 2)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text(String(quizController.quiz.corrects))
                        }
                        .font(.headline)
                        .foregroundColor(Color("White"))
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color("Green"))
                        .cornerRadius(50)
                    }
                    .padding(24)
                    .background(Color("White"))
                    
                    VStack{
                        Spacer()
                        
                        Countdown(counter: $quizController.timer, countTo: quizController.totalTime){
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
