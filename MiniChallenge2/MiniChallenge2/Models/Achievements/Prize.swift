//
//  Prize.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 13/09/23.
//

import Foundation

class Prize: Identifiable, Hashable {
    static func == (lhs: Prize, rhs: Prize) -> Bool {
        lhs.imageName == rhs.imageName
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(imageName)
    }
    
    let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}
