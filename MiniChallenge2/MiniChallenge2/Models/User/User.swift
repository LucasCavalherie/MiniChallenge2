//
//  User.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation
import SwiftUI

struct User: Identifiable, Codable {
    var id = UUID()
    var onboarded: Bool
    var name: String
    var level: Int
    var medalScore: Int
    var unlockedSports: [Sport]
    var pastOlympics: [Olympic]
    var achievements: [Achievement]
    var currentOlympic: Olympic?
}
