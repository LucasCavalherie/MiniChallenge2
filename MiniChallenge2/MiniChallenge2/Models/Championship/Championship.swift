//
//  Score.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

// Struct que representa competições/eventos das olimpiadas
enum MedalType: String, Codable {
    case none = "Nenhuma"
    case bronze = "Bronze"
    case silver = "Prata"
    case gold = "Ouro"
}

class Championship: Identifiable, Codable{
    var id = UUID()
    let sport: Sport
    var quiz: Quiz
    var done: Bool
    var unlock: Bool
    var championshipResults: [ChampionshipResult]
    var medalType: MedalType = .none
    
    init(sport: Sport, quiz: Quiz, done: Bool, unlock: Bool, championshipResults: [ChampionshipResult]) {
        self.sport = sport
        self.quiz = quiz
        self.done = done
        self.unlock = unlock
        self.championshipResults = championshipResults
    }
}
