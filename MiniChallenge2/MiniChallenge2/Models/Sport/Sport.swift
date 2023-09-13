//
//  Sport.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation
import SwiftUI

struct Sport: Identifiable, Codable {
    var id = UUID()
    let name: String
    let imageName: String
    let symbolName: String
    let color: String
    let link: String
    let value: Int
    let sportQuestions: [Question]
    let countryScoreOrder: [Country]
    var soon: Bool = false
}

