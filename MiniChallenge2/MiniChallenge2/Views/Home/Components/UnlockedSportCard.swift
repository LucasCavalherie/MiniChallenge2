//
//  SportCard.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct UnlockedSportCard: View {
    let championship: Championship
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var championshipController = ChampionshipController.shared
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(championship.sport.color))
            
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
                    
                    Link(destination: URL(string: championship.sport.link)!) {
                        Image(systemName: "info.circle.fill")
                            .padding(.horizontal, 4)
                            .padding(.vertical, 4)
                            .font(.headline)
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                    }
                }
                
                Spacer()
                
                if championship.done {
                    Button {
                        SoundController.shared.play(sound: .clickFast)
                        routerController.addKeyToViewStack(viewKey: "Rank")
                    } label: {
                        Text("Resultados")
                            .font(.body)
                            .foregroundColor(Color("Black"))
                            .fontWeight(.semibold)
                            .padding(.vertical, 12)
                            .padding(.horizontal, 36)
                            .background(Color("White"))
                            .cornerRadius(10)
                    }
                  
                } else {
                    Button {
                        SoundController.shared.play(sound: .clickFast)
                        championshipController.currentChampionship = championship
                        routerController.addKeyToViewStack(viewKey: "Goal")
                    } label: {
                        Text("Competir")
                            .font(.body)
                            .foregroundColor(Color("Black"))
                            .fontWeight(.semibold)
                            .padding(.vertical, 12)
                            .padding(.horizontal, 36)
                            .background(Color("White"))
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }
        .frame(width: 220, height: 450)
        .cornerRadius(20)
        
    }
}

struct UnlockedSportCard_Previews: PreviewProvider {
    static var previews: some View {
        let quiz = Quiz(questions: DataQuestions().swimmingQuestions)
        let championship = Championship(
            sport: SportsData().sport[0],
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
        UnlockedSportCard(championship: championship)
    }
}
