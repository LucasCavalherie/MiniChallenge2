//
//  Sport.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 30/08/23.
//

import Foundation
import SwiftUI

struct Sport: Identifiable, Codable {
    let id = UUID()
    let name: String
    let imageName: String
    let symbolName: String
    let color: String
    let link: String
    let value: Int
    let countryScoreOrder: [Country]
}

