//
//  Achievement.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

class Achievement: Identifiable{
    var id: Int
    var name: String
    let unlockCondition: () -> Bool
    var unlocked: Bool = false
    
    init(id: Int, name: String, unlockCondition: @escaping () -> Bool) {
        self.id = id
        self.name = name
        self.unlockCondition = unlockCondition
    }
}

