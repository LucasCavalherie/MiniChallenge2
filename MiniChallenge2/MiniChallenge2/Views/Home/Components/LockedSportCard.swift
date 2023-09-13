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
                .fill(Color("DarkGray"))
                .opacity(0.8)
            
            Image(championship.sport.imageName)
                .resizable(resizingMode: .tile)
                .ignoresSafeArea()
                .opacity(0.6)
            
            VStack {
                HStack (alignment: .top) {
                    HStack {
                        Image(systemName: "\(championship.sport.symbolName)")
                        Text("\(championship.sport.name)")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    olympicController.unlockSport(championship: championship)
                } label: {
                    HStack {
                        Image(systemName: olympicController.canUnlockSport(championship: championship) ? "medal.fill" : "lock.fill")
                        Text("\(championship.sport.value) pontos")
                    }
                    .font(.body)
                    .foregroundColor(olympicController.canUnlockSport(championship: championship) ? Color("Black") : Color("White"))
                    .fontWeight(.semibold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 36)
                    .background(olympicController.canUnlockSport(championship: championship) ? Color("White") : Color("DarkGray"))
                    .cornerRadius(10)
                }
                .disabled(!olympicController.canUnlockSport(championship: championship))
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
