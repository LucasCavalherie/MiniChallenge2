//
//  UserController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation
import SwiftUI

class UserController: ObservableObject {
    static var shared: UserController = {
        let instance = UserController()
        return instance
    }()
    
    var achievementsController = AchievementsController.shared
    
    private init() {
        if let userSaved = UserDefaults().object(forKey: "userSaved") as? Data,  let userSaved = try? JSONDecoder().decode(User.self, from: userSaved) {
            let sport = SportsData().sport[0]
            self.user = User(onboarded: false, name: "User", level: 1, medalScore: 0, unlockedSports: [sport], pastOlympics: [], achievementIds: [], currentOlympic: nil)
//            achievementsController.setUnlockedAchievements(ids: userSaved.achievementIds)
//            self.user = userSaved
        } else {
            let sport = SportsData().sport[0]
            self.user = User(onboarded: false, name: "User", level: 1, medalScore: 0, unlockedSports: [sport], pastOlympics: [], achievementIds: [], currentOlympic: nil)
        }
    }
    
    @Published var user : User
    @Published var userCountry : Country = Country(name: "Brasil", flagEmoji: "🇧🇷")
    
    func saveData() {
        achievementsController.checkAchievements()
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults().set(encoded, forKey: "userSaved")
        }
    }
    
    func userDidFinishOnboarding() {
        user.onboarded = true
        saveData()
        RouterController.shared.clear()
    }
    
    func hasUserFinishedOnboarding() -> Bool {
        return user.onboarded
    }
    
    func resetOnboarding() {
        user.onboarded = false
        saveData()
    }
    
    func upLevel() {
        user.level += 1
        saveData()
    }
    
    func upMedalScore(medalScore: Int) {
        user.medalScore += medalScore
        saveData()
    }
    
    func checkUnlockSport(sport: Sport) -> Bool {
        return user.unlockedSports.contains(where: {$0.name == sport.name})
    }
    
    func unlockSport(sport: Sport) {
        user.unlockedSports.append(sport)
        user.medalScore -= sport.value
        saveData()
    }
    
    func addPastOlympic(olympic: inout Olympic) {
        var championshioDoned : [Championship] = []
        for championship in olympic.championships {
            if championship.done {
                championshioDoned.append(championship)
            }
        }
        olympic.championships = championshioDoned
        
        user.pastOlympics.append(olympic)
        saveData()
    }
    
    func addAchievement(achievement: Achievement) {
        user.achievementIds.append(achievement.id)
        saveData()
    }
    
    func saveCurrentOlympic(olympic : Olympic) {
        user.currentOlympic = olympic
        saveData()
    }
    
    func finishCurrentOlympic() {
        if user.currentOlympic != nil {
            self.addPastOlympic(olympic: &user.currentOlympic!)
        }
        user.currentOlympic = nil
        saveData()
    }
    
    func getHighestAchievement() -> Achievement {
        let highestId = user.achievementIds.max() ?? 0
        return achievementsController.achievements[highestId]
    }
}


