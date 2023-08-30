//
//  Answer.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Answer: Identifiable{
    let id = UUID()
    let text: String
    let correct: Bool
}
