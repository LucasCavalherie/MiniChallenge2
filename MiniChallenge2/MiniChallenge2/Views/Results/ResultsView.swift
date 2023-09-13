//
//  Results.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 06/09/23.
//

import SwiftUI

struct ResultsView: View {
    @StateObject var routerController = RouterController.shared
    @StateObject var olympicController = OlympicController.shared
    @StateObject var championshipController = ChampionshipController.shared
    
    var body: some View {
        VStack {
            NavBar()
            List {
                ForEach(Array(olympicController.olympic.championships.enumerated()), id: \.element.id) { i, championship in
                    HStack {
                        Image(systemName: championship.sport.symbolName)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("White"))
                        
                        VStack (alignment: .leading) {
                            HStack {
                                Text(championship.sport.name)
                                    .font(.headline)
                                    .foregroundColor(Color("White"))
                            }
                            
                            Text("\(championshipController.getBrasilInChampionshipResult(championship: championship)) acertos")
                                .font(.caption)
                                .foregroundColor(Color("White"))
                        }
                        .padding(.leading, 8)
                        
                        Spacer()
                        
                        switch championship.medalType {
                            case .gold:
                                Image(systemName: "circle.fill")
                                    .font(.title)
                                    .foregroundColor(Color("White"))
                                    .overlay(
                                        Image(systemName: "medal")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("Yellow"))
                                    )
                            case .silver:
                                Image(systemName: "circle.fill")
                                    .font(.title)
                                    .foregroundColor(Color("White"))
                                    .overlay(
                                        Image(systemName: "medal")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("DarkGray"))
                                    )
                            case .bronze:
                                Image(systemName: "circle.fill")
                                    .font(.title)
                                    .foregroundColor(Color("White"))
                                    .overlay(
                                        Image(systemName: "medal")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("Bronze"))
                                    )
                            case .none:
                                EmptyView()
                        }
                    }
                    .listRowBackground(Color("Green"))
                    .padding(.vertical, 4)
                }
            }
            .padding(.horizontal,8)
            .scrollContentBackground(.hidden)
            
                Button {
                    SoundController.shared.play(sound: .beep)
                    routerController.clear()
                    olympicController.createOlympic()
                } label: {
                    Text("Nova olímpiada")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("White"))
                        .padding(.vertical,16)
                        .frame(maxWidth: .infinity)
                }
                .background(Color("Orange"))
                .cornerRadius(10)
                .padding(.horizontal, 28)
            
        }
        .background(Color("Gray"))
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
