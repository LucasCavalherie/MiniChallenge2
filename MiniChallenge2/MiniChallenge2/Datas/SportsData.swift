//
//  SportsData.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation
import SwiftUI

final class SportsData{
    var sport: [Sport] = [
        Sport(
            name: "Vela",
            imageName: "Vela",
            symbolName: "sailboat.fill",
            color: "Blue",
            link: "https://olympics.com/pt/esportes/vela/",
            value: 0,
            sportQuestions: DataQuestions().sailingQuestions,
            countryScoreOrder: [
                Country(name: "Espanha", flagEmoji: "🇪🇸"),
                Country(name: "Estados Unidos", flagEmoji: "🇺🇸"),
                Country(name: "Japão", flagEmoji: "🇯🇵"),
                Country(name: "Itália", flagEmoji: "🇮🇹"),
                Country(name: "França", flagEmoji: "🇫🇷"),
                Country(name: "Alemanha", flagEmoji: "🇩🇪"),
                Country(name: "Argentina", flagEmoji: "🇦🇷")
            ]
        ),
        
        Sport(
            name: "Natação",
            imageName: "Natação",
            symbolName: "figure.pool.swim",
            color: "Orange",
            link: "https://olympics.com/pt/esportes/natacao/",
            value: 10,
            sportQuestions: DataQuestions().swimmingQuestions,
            countryScoreOrder: [
                Country(name: "Espanha", flagEmoji: "🇪🇸"),
                Country(name: "Estados Unidos", flagEmoji: "🇺🇸"),
                Country(name: "Japão", flagEmoji: "🇯🇵"),
                Country(name: "Itália", flagEmoji: "🇮🇹"),
                Country(name: "França", flagEmoji: "🇫🇷"),
                Country(name: "Alemanha", flagEmoji: "🇩🇪"),
                Country(name: "Argentina", flagEmoji: "🇦🇷")
            ]
        ),
        
        Sport(
            name: "Rugby",
            imageName: "Vela",
            symbolName: "figure.rugby",
            color: "Orange",
            link: "https://olympics.com/pt/esportes/vela/",
            value: 99999999,
            sportQuestions: DataQuestions().sailingQuestions,
            countryScoreOrder: [
                Country(name: "Espanha", flagEmoji: "🇪🇸"),
                Country(name: "Estados Unidos", flagEmoji: "🇺🇸"),
                Country(name: "Japão", flagEmoji: "🇯🇵"),
                Country(name: "Itália", flagEmoji: "🇮🇹"),
                Country(name: "França", flagEmoji: "🇫🇷"),
                Country(name: "Alemanha", flagEmoji: "🇩🇪"),
                Country(name: "Argentina", flagEmoji: "🇦🇷")
            ]
        )
    
    ]
}

