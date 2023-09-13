//
//  SoonCard.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 06/09/23.
//

import SwiftUI

struct LockedSportCard: View {
    let championship: Championship
    @ObservedObject var olympicController = OlympicController.shared
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Gray"))
            
            Image("lockSport")
            
            VStack {
                HStack (alignment: .top) {
                    HStack {
                        Image(systemName: "\(championship.sport.symbolName)")
                        Text("\(championship.sport.name)")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color("Black"))
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    SoundController.shared.play(sound: .cardClick)
                    olympicController.unlockSport(championship: championship)
                } label: {
                    HStack {
                        Image(systemName: "medal.fill")
                        Text("\(championship.sport.value) pontos")
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
        .frame(width: 220, height: 450)
        .cornerRadius(20)
        
    }
}

struct LockedSportCard_Previews: PreviewProvider {
    static var previews: some View {
        let quiz = Quiz(questions: DataQuestions().swimmingQuestions)
        let championship = Championship(
            sport: SportsData().sport[1],
            quiz: quiz,
            done: false,
            unlock: false,
            championshipResults: [
                ChampionshipResult(
                    country: SportsData().sport[0].countryScoreOrder[0],
                    value: 10
                )
            ]
        )
        LockedSportCard(championship: championship)
    }
}
