//
//  OlympicHistoryCard.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 12/09/23.
//

import Foundation
import SwiftUI

struct OlympicHistoryCard: View {
    var olympic : Olympic
    
    var body: some View {
        Button(action: {
            // Ir para a tela de resultados
            print("Indo para a tela de resultados da Olimpíada "+olympic.name)
        }) {
            VStack(spacing: 0){
                VStack(spacing: 12) {
                    Text(olympic.name)
                        .font(.system(size: 15, weight: .semibold))
                    Text("Medalhas")
                        .font(.system(size: 15, weight: .regular))
                        .italic()
                }
                    .padding(.vertical, 0)
                    .padding(.horizontal, 25)
                    .frame(height: 72)
                    .frame(maxWidth: .infinity)
                    .background(Color("Green"))
                    .cornerRadius(10)
                VStack(spacing: 8) {
                    ForEach(0...3, id: \.self) { i in
                        if (olympic.championships.count > i) {
                            // Divisória
                            if (i > 0) {
                                VStack{}
                                    .frame(width: 84, height: 2)
                                    .background(Color("Black"))
                            }
                            // Esporte
                            VStack (alignment: .center, spacing: 8) {
                                Text(olympic.championships[i].sport.name)
                                    .font(.system(size: 17, weight: .semibold))
                                HStack(alignment: .center, spacing: 0) {
                                    Image(systemName: "medal.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 24)
                                    Text(getMedalName(olympic.championships[i]))
                                        .font(.system(size: 13, weight: .regular))
                                        .lineLimit(1)
                                }
                                .padding(.all, 0)
                                .frame(height: 40)
                            }
                            .padding(.horizontal, 21)
                            .padding(.vertical, 8)
                        }
                    }
                    // Botão final
                    HStack(alignment: .center,spacing: 2){
                        Spacer()
                        Text("Todas")
                            .font(.system(size: 11, weight: .regular))
                            .italic()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 11, height: 11)
                    }
                    .padding(.all, 0)
                }
                .padding(.all, 8)
            }
        }
        .foregroundColor(Color("Black"))
        .padding(.all, 4)
        .frame(width: 141)
        .background(Color("White"))
        .cornerRadius(14)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .strokeBorder(Color("Green"), lineWidth: 4)
        )
    }
    
    func getMedalName(_ championship : Championship) -> String {
        switch(championship.getPlayerPositionInResults()) {
        case 0:
            return "Ouro"
        case 1:
            return "Prata"
        case 2:
            return "Bronze"
        default:
            return "Nenhuma"
        }
    }
}
