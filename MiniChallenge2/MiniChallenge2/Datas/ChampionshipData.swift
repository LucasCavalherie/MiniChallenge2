//
//  ChampionshipData.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import Foundation

final class ChampionshipData{
    let championship = Championship(
        sport: SportsData().sport[0],
        quiz: Quiz(questions: DataQuestions().swimmingQuestions),
        done: false,
        unlock: true,
        championshipResults: [
            ChampionshipResult(
                country: Country(name: "Espanha", flagEmoji: "🇪🇸"),
                value: 700
            ),
            ChampionshipResult(
                country: Country(name: "Estados Unidos", flagEmoji: "🇺🇸"),
                value: 600
            ),
            ChampionshipResult(
                country: Country(name: "Japão", flagEmoji: "🇯🇵"),
                value: 500
            ),
            ChampionshipResult(
                country: Country(name: "Itália", flagEmoji: "🇮🇹"),
                value: 400
            ),
            ChampionshipResult(
                country: Country(name: "França", flagEmoji: "🇫🇷"),
                value: 300
            ),
            ChampionshipResult(
                country: Country(name: "Alemanha", flagEmoji: "🇩🇪"),
                value: 200
            ),
            ChampionshipResult(
                country: Country(name: "Argentina", flagEmoji: "🇦🇷"),
                value: 100
            ),
            ChampionshipResult(
                country: Country(name: "Brasil", flagEmoji: "🇧🇷"),
                value: 150
            )
        ]
    )

}

