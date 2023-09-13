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
                ForEach(Array(routerController.resultSettings.olympic.championships.enumerated()), id: \.element.id) { i, championship in
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
                        
                        if championship.medalType != .none {
                            Image(systemName: "circle.fill")
                                .font(.title)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    Image(systemName: "medal")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(championship.medalColor())
                                )
                        }
                        else {
                            EmptyView()
                        }
                    }
                    .listRowBackground(Color("Green"))
                    .padding(.vertical, 4)
                }
            }
            .scrollContentBackground(.hidden)
            .padding(.horizontal)
            
            if (routerController.resultSettings.showNextButton) {
                 Button {
                    routerController.clear()
                    olympicController.createOlympic()
                } label: {
                    Text("Nova olímpiada")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("White"))
                        .padding(.vertical)
                        .padding(.horizontal, 56)
                        .background(Color("Orange"))
                        .cornerRadius(20)
                }
            } else {
                Button {
                   routerController.goBack()
               } label: {
                   Text("Voltar")
                       .font(.title3)
                       .fontWeight(.bold)
                       .foregroundColor(Color("Orange"))
                       .padding(.vertical)
                       .padding(.horizontal, 56)
                       .background(Color("White"))
                       .cornerRadius(20)
               }
            }
        }
        .background(Color("Gray"))
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
