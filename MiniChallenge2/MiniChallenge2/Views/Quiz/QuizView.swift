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
                VStack{
                    Countdown(counter: $quizController.timer, countTo: quizController.totalTime){
                        quizController.timeFinished = true
                    }
                    
                    Spacer()

                    VStack(spacing: 16){
                        VStack(spacing: 8){
                            Text("Question \(quizController.quiz.total):")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(quizController.question.text)
                                .multilineTextAlignment(.center)
                                .frame(height: 100)
                        }
                        HStack(spacing: 4){
                            Image(systemName: quizController.question.category.symbol)
                            Text(quizController.question.category.title)
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(.gray)
                    .cornerRadius(12)

                    Spacer()

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
                .navigationBarBackButtonHidden()
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
