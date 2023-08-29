//
//  Question.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Question: Identifiable, Equatable{
    static func == (lhs: Question, rhs: Question) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id = UUID()
    let text: String
    let category: Category
    let answers: [Answer]
}

