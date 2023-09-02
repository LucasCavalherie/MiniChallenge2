//
//  NavBarQuiz.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import SwiftUI

struct NavBarQuiz: View {
    @ObservedObject var quizController = QuizController.shared
    
    var body: some View {
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
    }
}

struct NavBarQuiz_Previews: PreviewProvider {
    static var previews: some View {
        NavBarQuiz()
    }
}
