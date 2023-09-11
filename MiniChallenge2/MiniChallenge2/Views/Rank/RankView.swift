//
//  RankView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import SwiftUI

struct RankView: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    @ObservedObject var quizController = QuizController.shared

    var body: some View {
        VStack {
            NavBarQuiz()
            
            List {
                ForEach(Array(championshipController.listChampionshipResults().enumerated()), id: \.element.id) { i, championship in
                    HStack {
                        Image(systemName: String(i+1) + ".circle.fill")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(
                                championship.country.name == "Brasil" ? Color("Yellow") : Color("Blue"))
                        
                        VStack (alignment: .leading) {
                            HStack {
                                Text(championship.country.flagEmoji)
                                    .font(.headline)
                                Text(championship.country.name)
                                    .font(.headline)
                                    .foregroundColor(Color("Black"))
                            }
                            
                            Text("\(championship.value) acertos")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("DarkGray"))
                        }
                        .padding(.leading, 8)
                        
                        Spacer()
                        
                        if championshipController.currentChampionship.done {
                            if i == 0 {
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("Yellow"))
                            }
                            
                            if i == 1 {
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DarkGray"))
                            }
                            
                            if i == 2 {
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("Bronze"))
                            }
                        }
                        
                    }
                    .listRowBackground(Color("White"))
                    .padding(.vertical, 4)
                }
            }
            .scrollContentBackground(.hidden)
            .padding(.horizontal)
            
                Button {
                    routerController.addKeyToViewStack(viewKey: "Home")
                } label: {
                    Text("Retornar as olimpíadas")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("White"))
                        .padding()
                        .background(Color("Orange"))
                        .cornerRadius(20)
                }
        }
        .background(Color("Blue"))
    }
}

struct RankView_Previews: PreviewProvider {
    static var previews: some View {
        RankView()
    }
}
