//
//  OlympicHistoryCardChampionship.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 12/09/23.
//

import Foundation
import SwiftUI

struct OlympicHistoryCardChampionship : View {
    var championship : Championship
    
    var body: some View {
        VStack (alignment: .center, spacing: 8) {
            Text(championship.sport.name)
                .font(.system(size: 17, weight: .semibold))
            HStack(alignment: .center, spacing: 0) {
                if (showMedal(championship)) {
                    Image(systemName: "medal.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 24)
                }
                Text(getMedalName(championship))
                    .font(.system(size: 13, weight: .regular))
                    .lineLimit(1)
            }
            .padding(.all, 0)
            .frame(height: 40)
        }
        .padding(.horizontal, 21)
        .padding(.vertical, 8)
    }
    
    func showMedal(_ championship: Championship) -> Bool {
        let playerPosition = championship.getPlayerPositionInResults()
        return (playerPosition >= 1) && (playerPosition <= 3)
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
