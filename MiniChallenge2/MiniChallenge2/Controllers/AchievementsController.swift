//
//  AchievementsController.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 13/09/23.
//

import Foundation
import SwiftUI

class AchievementsController : ObservableObject {
    static var shared: AchievementsController = {
        let instance = AchievementsController()
        return instance
    }()
    
    @Published var achievements : [Achievement] = AchievementsData().achievements
    
    func setUnlockedAchievements (ids: [Int]) -> Void {
        for achievement in achievements {
            if ids.contains(achievement.id) {
                achievement.unlocked = true
            }
        }
    }
}
