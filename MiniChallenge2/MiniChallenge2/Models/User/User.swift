//
//  User.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

struct User: Identifiable{
    let id = UUID()
    var onboarded: Bool
    var name: String
    var level: Int
    var medalScore: Int
    var unlockedSports: [Sport] // caso de problema mudar para uuids
    var pastOlympics: [Olympic]
    var achievements: [Achievement]
    var currentOlympic: Olympic?
}
