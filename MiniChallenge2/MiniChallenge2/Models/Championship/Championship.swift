//
//  Score.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

// Struct que representa competições/eventos das olimpiadas
class Championship: Identifiable, Codable{
    var id = UUID()
    let sport: Sport
    let quiz: Quiz
    var done: Bool
    var unlock: Bool
    var championshipResults: [ChampionshipResult]
    
    init(sport: Sport, quiz: Quiz, done: Bool, unlock: Bool, championshipResults: [ChampionshipResult]) {
        self.sport = sport
        self.quiz = quiz
        self.done = done
        self.unlock = unlock
        self.championshipResults = championshipResults
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
