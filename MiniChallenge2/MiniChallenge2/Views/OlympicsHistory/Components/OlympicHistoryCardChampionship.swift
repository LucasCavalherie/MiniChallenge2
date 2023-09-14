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
                if (championship.medalType != .none) {
                    Image(systemName: "medal.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(championship.medalColor())
                        .frame(width: 40, height: 24)
                }
                Text(championshipText())
                    .font(.system(size: 13, weight: .regular))
                    .lineLimit(1)
            }
            .padding(.all, 0)
            .frame(height: 40)
        }
        .padding(.horizontal, 17)
        .padding(.vertical, 8)
    }
    
    func championshipText() -> String {
        let playerPosition = championship.getPlayerPositionInResults()
        if (playerPosition >= 0 && playerPosition <= 2) {
            return championship.medalType.rawValue
        }
        else if (playerPosition > 2) {
            return String(playerPosition)+"º"
        }
        else {
            return ""
        }
    }
}
