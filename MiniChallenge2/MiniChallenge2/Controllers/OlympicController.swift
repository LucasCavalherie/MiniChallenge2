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
        UserController.shared.upMedalScore(medalScore: olympic.medalScore)
        
    }
    
    private init() {
        if (UserController.shared.user.currentOlympic == nil) {
            createOlympic()
        } else {
            olympic = UserController.shared.user.currentOlympic!
        }
    }
    
    func createOlympic() {
        olympic = Olympic(name: "Olimpiadas", medalScore: 0, championships: [])
        createChampionships(sportList: SportsData().sport)
        UserController.shared.saveCurrentOlympic(olympic: olympic)
    }
    
    func createChampionships(sportList: [Sport]) {
        for sport in sportList {
            let unlock = UserController.shared.checkUnlockSport(sport: sport)
            let quiz = Quiz(questions: DataQuestions().questions)
            let championship = Championship(sport: sport, quiz: quiz, done: false, unlock: unlock, championshipResults: createChampionshipResults(sport: sport, step: 1))
            
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
    
    func finishOlympic() {
        UserController.shared.upMedalScore(medalScore: olympic.medalScore)
        UserController.shared.upLevel()
    }
    
    func countChampionshipDone() -> Int {
        var dones = 0
        for championship in olympic.championships {
            if championship.done {
                dones += 1
            }
        }
        
        return dones
    }
    
    func canUnlockSport(championship: Championship) -> Bool {
        return championship.sport.value <= UserController.shared.user.medalScore
    }
    
    func unlockSport(championship: Championship) {
        championship.unlock = true
        UserController.shared.unlockSport(sport: championship.sport)
    }
}
