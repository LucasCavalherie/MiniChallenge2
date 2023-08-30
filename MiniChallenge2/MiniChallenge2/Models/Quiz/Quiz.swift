//
//  Quiz.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Quiz: Identifiable{
    let id = UUID()
    var total: Int
    var corrects: Int
    var errors: Int
}
