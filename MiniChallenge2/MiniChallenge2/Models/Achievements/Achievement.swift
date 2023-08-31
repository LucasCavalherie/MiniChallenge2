//
//  Achievement.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import Foundation

struct Achievement: Identifiable{
    let id = UUID()
    let name: String
    let unlockCondition: () -> Bool
}

