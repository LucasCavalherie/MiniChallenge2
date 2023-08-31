//
//  Score.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

// Struct que representa competições/eventos das olimpiadas
struct Championship: Identifiable{
    let id = UUID()
    let sport: Sport
    let quiz: Quiz
    var score: Int
    var championshipResults: [ChampionshipResult]
}
