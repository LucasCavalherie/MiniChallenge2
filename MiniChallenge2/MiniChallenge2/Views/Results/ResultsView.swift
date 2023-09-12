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
                            
                            Text("\(championship.quiz.corrects) acertos")
                                .font(.caption)
                                .foregroundColor(Color("White"))
                        }
                        .padding(.leading, 8)
                        
                        Spacer()
                        
                        switch championship.medalType {
                            case .gold:
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("Yellow"))
                            case .silver:
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DarkGray"))
                            case .bronze:
                                Image(systemName: "medal.fill")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("Bronze"))
                            case .none:
                                EmptyView()
                        }
                    }
                    .listRowBackground(Color("Green"))
                    .padding(.vertical, 4)
                }
            }
            .scrollContentBackground(.hidden)
            .padding(.horizontal)
            
                Button {
                    routerController.clear()
                    olympicController.createOlympic()
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
        .background(Color("Gray"))
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
