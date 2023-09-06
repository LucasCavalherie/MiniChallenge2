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
