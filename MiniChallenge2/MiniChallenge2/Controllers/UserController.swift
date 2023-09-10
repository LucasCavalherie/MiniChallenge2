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
    
    private init() {}
    
    @Published var user : User = User(onboarded: false, name: "User", level: 1, medalScore: 1000, unlockedSports: SportsData().sport, pastOlympics: [], achievements: [], currentOlympic: nil)
    @Published var userCountry : Country = Country(name: "Brasil", flagEmoji: "🇧🇷")
    
//    func onboardingDone() {
//        user.onboarded = true
//    }
    
    func upLevel() {
        user.level += 1
    }
    
    func upMedalScore(medalScore: Int) {
        user.medalScore += medalScore
    }
    
    func unlockSport(sport: Sport) {
        user.unlockedSports.append(sport)
    }
    
    func addPastOlympic(olympic: Olympic) {
        user.pastOlympics.append(olympic)
    }
    
    func addAchievement(achievement: Achievement) {
        user.achievements.append(achievement)
    }
    
    func finishCurrentOlympic() {
        if user.currentOlympic != nil {
            self.addPastOlympic(olympic: user.currentOlympic!)
        }
        user.currentOlympic = nil
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


