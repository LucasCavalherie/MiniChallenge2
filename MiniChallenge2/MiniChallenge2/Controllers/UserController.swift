//
//  UserController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

class UserController: ObservableObject {
    static var shared: UserController = {
        let instance = UserController()
        return instance
    }()
    
    private init() {
        if let userSaved = UserDefaults().object(forKey: "userSaved") as? Data,  let userSaved = try? JSONDecoder().decode(User.self, from: userSaved) {
            self.user = userSaved
        } else {
            self.user = User(onboarded: false, name: "User", level: 1, medalScore: 20, unlockedSports: SportsData().sport, pastOlympics: [], achievements: [], currentOlympic: nil)
        }
    }
    
    @Published var user : User
    @Published var userCountry : Country = Country(name: "Brasil", flagEmoji: "🇧🇷")
    
    func saveData() {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults().set(encoded, forKey: "userSaved")
        }
    }
    
    func onboardingDone() {
        user.onboarded = true
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
    
    func unlockSport(sport: Sport) {
        user.unlockedSports.append(sport)
        saveData()
    }
    
    func addPastOlympic(olympic: Olympic) {
        user.pastOlympics.append(olympic)
        saveData()
    }
    
    func addAchievement(achievement: Achievement) {
        user.achievements.append(achievement)
        saveData()
    }
    
    func saveCurrentOlympic(olympic : Olympic) {
        user.currentOlympic = olympic
        saveData()
    }
    
    func finishCurrentOlympic() {
        if user.currentOlympic != nil {
            self.addPastOlympic(olympic: user.currentOlympic!)
        }
        user.currentOlympic = nil
        saveData()
    }
}

