//
//  Olympic.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation

struct Olympic: Identifiable, Codable{
    var id = UUID()
    let name: String
    var medalScore: Int
    var championships: [Championship]
}

