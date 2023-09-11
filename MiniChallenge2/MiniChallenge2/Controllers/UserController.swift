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
            let sport = SportsData().sport[0]
            self.user = User(onboarded: false, name: "User", level: 1, medalScore: 20, unlockedSports: [sport], pastOlympics: [], achievements: [], currentOlympic: nil)
            //self.user = userSaved
        } else {
            let sport = SportsData().sport[0]
            self.user = User(onboarded: false, name: "User", level: 1, medalScore: 20, unlockedSports: [sport], pastOlympics: [], achievements: [], currentOlympic: nil)
        }
    }
    
    @Published var user : User
    @Published var userCountry : Country = Country(name: "Brasil", flagEmoji: "🇧🇷")
    
<<<<<<< HEAD
//    func onboardingDone() {
//        user.onboarded = true
//    }
=======
    func saveData() {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults().set(encoded, forKey: "userSaved")
        }
    }
    
    func onboardingDone() {
        user.onboarded = true
        saveData()
    }
>>>>>>> afbcf63619e50d179a2f6d6109191e1859ed7551
    
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


// MARK: - User Defaults features

extension UserController {
    
    private var onboardingKey: String { return "HasCompletedOnboarding" }
    
    func userDidFinishOnboarding() {
        UserDefaults.standard.set(true, forKey: onboardingKey)
    }
    
    func hasUserFinishedOnboarding() -> Bool {
        return UserDefaults.standard.bool(forKey: onboardingKey)
    }
    
    func resetOnboarding() {
        UserDefaults.standard.set(false, forKey: onboardingKey)
    }
}


