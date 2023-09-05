//
//  Quiz.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Quiz: Identifiable{
    let id = UUID()
    var total: Int = 0
    var corrects: Int = 0
    var errors: Int = 0
    var answered: Bool = false
    var questions: [Question]
}
