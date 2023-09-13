//
//  AchievementsData.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation
import SwiftUI

final class AchievementsData{
    var achievements: [Achievement] = [
        Achievement(id: 0, name: "Iniciante", description: "Boas vindas às Olimpíadas", sfSymbol: "flag", unlockCondition: {
            return true
        }),
        Achievement(id: 1, name: "Entusiasta", description: "Dispute sua 1ª olimpíada", sfSymbol: "flag.checkered", unlockCondition: {
            return UserController.shared.user.level > 1
        }),
        Achievement(id: 2, name: "Campeão", description: "Conquiste sua 1ª medalha de ouro", sfSymbol: "trophy.circle", unlockCondition: {
            for olympic in UserController.shared.user.pastOlympics {
                for championship in olympic.championships {
                    if championship.medalType == .gold {
                        return true
                    }
                }
            }
            return false
        }),
        Achievement(id: 3, name: "Veterano", description: "Dispute 3 olimpíadas", sfSymbol: "03.circle", unlockCondition: {
            return UserController.shared.user.level > 3
        })
    ]
    
    var prizes: [Prize] = [
        Prize(imageName: "PrizeTrophy"),
        Prize(imageName: "PrizeFootball"),
        Prize(imageName: "PrizeDumbbell"),
    ]
}

