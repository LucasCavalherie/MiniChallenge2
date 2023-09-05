//
//  ChampionshipController.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import Foundation

class ChampionshipController: ObservableObject {
    static var shared: ChampionshipController = {
        let instance = ChampionshipController()
        return instance
    }()
    
    @Published var currentChampionship : Championship = ChampionshipData().championship
    
    private init() {
        self.currentChampionship = ChampionshipData().championship
    }
    
    func createChampionships(sportList: [Sport]) {
        for sport in sportList {
            let quiz = Quiz(questions: DataQuestions().questions)
            let championship = Championship(sport: sport, quiz: quiz, done: false, championshipResults: createChampionshipResults(sport: sport, step: 100))
            
            OlympicController.shared.olympic.championships.append(championship)
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
    
    func listChampionshipResults() -> [ChampionshipResult] {
        return currentChampionship.championshipResults.sorted(by: {$0.value > $1.value})
    }
    
    func finishChampionship() {
        let score = QuizController.shared.quiz.corrects // mudar depois
        let playerChampionshipResult = ChampionshipResult(country: UserController.shared.userCountry, value: score)
        currentChampionship.championshipResults.insert(playerChampionshipResult, at: 0)
        currentChampionship.championshipResults.sort(by: {$0.value > $1.value})
        
        let position = currentChampionship.championshipResults.firstIndex(where: {$0.id == playerChampionshipResult.id})
        OlympicController.shared.upMedalScore(position: position ?? 3)
        
        currentChampionship.done = true
    }
    

}
