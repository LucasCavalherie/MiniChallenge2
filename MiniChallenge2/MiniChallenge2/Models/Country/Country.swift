//
//  Country.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

struct Country: Identifiable, Codable{
    var id = UUID()
    let name: String
    var flagImageName: String = ""
    let flagEmoji: String
}


