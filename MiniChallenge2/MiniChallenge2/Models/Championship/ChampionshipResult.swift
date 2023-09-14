//
//  ChampionshipResult.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

struct ChampionshipResult: Identifiable, Codable {
    var id = UUID()
    let country: Country
    let value: Int
}

