//
//  Score.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation
import SwiftUI

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
    
    func medalColor() -> Color {
        switch medalType {
        case .none:
            return Color("Black")
        case .bronze:
            return Color("Bronze")
        case .silver:
            return Color("DarkGray")
        case .gold:
            return Color("Yellow")
        }
    }
    func getPlayerPositionInResults() -> Int {
        getPositionInResults(countryName: "Brasil")
    }
    func getPositionInResults(countryName : String) -> Int {
        return championshipResults.firstIndex(where: {$0.country.name == countryName}) ?? -1
    }
    func getPositionInResults(country: Country) -> Int {
        getPositionInResults(countryName: country.name)
    }
}
