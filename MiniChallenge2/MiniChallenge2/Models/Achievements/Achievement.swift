//
//  Achievement.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

class Achievement: Identifiable{
    let id: Int
    let name: String
    let description: String
    let sfSymbol: String
    let unlockCondition: () -> Bool
    var unlocked: Bool = false
    
    init(id: Int, name: String, description: String, sfSymbol: String, unlockCondition: @escaping () -> Bool) {
        self.id = id
        self.name = name
        self.description = description
        self.sfSymbol = sfSymbol
        self.unlockCondition = unlockCondition
    }
}

