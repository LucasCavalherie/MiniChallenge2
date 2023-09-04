//
//  NavBarQuiz.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import SwiftUI

struct NavBarQuiz: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var quizController = QuizController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    
    var body: some View {
        HStack (alignment: .center) {
            HStack {
                Button {
                    routerController.clear()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(Color("Black"))
                }
            }
            
            Spacer()
            
            HStack {
                Image(systemName: championshipController.currentChampionship.sport.symbolName)
                    .font(.title)
                    .foregroundColor(Color("Black"))
                
                Text(championshipController.currentChampionship.sport.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
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
