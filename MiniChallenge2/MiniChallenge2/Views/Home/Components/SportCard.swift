//
//  SportCard.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct SportCard: View {
    let championship: Championship
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(championship.sport.color)
            
            VStack {
                HStack (alignment: .top) {
                    HStack {
                        Image(systemName: championship.sport.symbolName)
                        Text(championship.sport.name)
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .cornerRadius(20)
                    
                    Spacer()
                    
                    Image(systemName: "info.circle.fill")
                        .padding(.horizontal, 4)
                        .padding(.vertical, 4)
                        .font(.headline)
                        .foregroundColor(Color("White"))
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                Button {
                    championshipController.currentChampionship = championship
                    routerController.addKeyToViewStack(viewKey: "Rank")
                } label: {
                    HStack {
                        if championship.done {
                            Text("Resultados")
                        } else {
                            Text("Competir")
                        }
                    }
                    .font(.body)
                    .foregroundColor(Color("Black"))
                    .fontWeight(.semibold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 36)
                    .background(Color("White"))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .frame(width: 220, height: 320)
        .cornerRadius(20)
        
    }
}

struct SportCard_Previews: PreviewProvider {
    static var previews: some View {
        let quiz = Quiz(questions: DataQuestions().questions)
        let championship = Championship(
            sport: SportsData().sport[0],
            quiz: quiz,
            done: false,
            championshipResults: [
                ChampionshipResult(
                    country: SportsData().sport[0].countryScoreOrder[0],
                    value: 10
                )
            ]
        )
        SportCard(championship: championship)
    }
}
