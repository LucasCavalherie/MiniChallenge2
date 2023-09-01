//
//  OlympicController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

class OlympicController: ObservableObject {
    static var shared: OlympicController = {
        let instance = OlympicController()
        return instance
    }()
    
    @Published var olympic : Olympic = Olympic(name: "Olimpiadas", medalScore: 0, championships: [])
    
    func upMedalScore(position: Int) {
        switch position {
            case 0:
                olympic.medalScore += 500
            case 1:
                olympic.medalScore += 300
            case 2:
                olympic.medalScore += 100
            default:
                olympic.medalScore += 0
        }
        
    }
    
    private init() {
        if (UserController.shared.user.currentOlympic == nil) {
            createOlympic()
        }
    }
    
    func createOlympic() {
        olympic = Olympic(name: "Olimpiadas", medalScore: 0, championships: [])
        createChampionships(sportList: UserController.shared.user.unlockedSports)
        UserController.shared.user.currentOlympic = olympic
    }
    
    func createChampionships(sportList: [Sport]) {
        for sport in sportList {
            let quiz = Quiz(questions: DataQuestions().questions)
            let championship = Championship(sport: sport, quiz: quiz, done: false, championshipResults: createChampionshipResults(sport: sport, step: 100))
            
            olympic.championships.append(championship)
        }
    }
    
    func createChampionshipResults(sport: Sport, step: Int) -> [ChampionshipResult] {
        var championshipResults: [ChampionshipResult] = []
        var value =  sport.countryScoreOrder.count * step
        for country in sport.countryScoreOrder {
            let newResult = ChampionshipResult(country: country, value: value)
            championshipResults.append(newResult)
            value -= step
        }
        
        return championshipResults
    }
    
    func listChampionshipResults(championship : Championship) -> [ChampionshipResult] {
        return championship.championshipResults.sorted(by: {$0.value > $1.value})
    }
    
    func finishChampionship(championship : inout Championship) {
        let score = championship.quiz.total
        let playerChampionshipResult = ChampionshipResult(country: UserController.shared.userCountry, value: score)
        championship.championshipResults.append(playerChampionshipResult)
        championship.championshipResults.sort(by: {$0.value > $1.value})
        
        let position = championship.championshipResults.firstIndex(where: {$0.id == playerChampionshipResult.id})
        upMedalScore(position: position ?? 3)
        
        championship.done = true
    }
    
    func finishOlympic() {
        UserController.shared.upMedalScore(medalScore: olympic.medalScore)
        UserController.shared.upLevel()
    }
}
