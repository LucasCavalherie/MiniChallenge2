//
//  PlayView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var quizController = QuizController.shared
    
    var body: some View {
        VStack{
            VStack(spacing: 32){
                VStack(spacing: 16){
                    ScoreArea(texto: "Correct: \(quizController.quiz.corrects)" )
                    ScoreArea(texto: "Wrong: \(quizController.quiz.errors)")
                    ScoreArea(texto: "Total: \(quizController.quiz.total)")
                }
            }
        }
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity)
        .navigationBarBackButtonHidden()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
