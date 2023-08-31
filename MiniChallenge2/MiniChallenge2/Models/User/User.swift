//
//  User.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

struct User: Identifiable{
    let id = UUID()
    let onboarded: Bool
    let name: String
    let level: Int
    let medalScore: Int
    let unlockedSports: [Sport]
    let pastOlympics: [Olympic]
    let currentOlympic: Olympic
}
