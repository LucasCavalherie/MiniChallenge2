//
//  Question.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Question: Identifiable, Equatable, Codable{
    static func == (lhs: Question, rhs: Question) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    let text: String
    let justification: String
    var imageName: String = ""
    let category: Category
    let answers: [Answer]
    var answered: Answer?
}

