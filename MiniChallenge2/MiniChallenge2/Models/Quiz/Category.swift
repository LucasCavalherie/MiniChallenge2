//
//  Category.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import Foundation

struct Category: Identifiable, Codable{
    var id = UUID()
    let symbol: String
    let title: String
    
    static var history = Category(symbol: "building.columns.fill", title: "History")
    static var geography = Category(symbol: "globe.americas.fill", title: "Geography")
    static var math = Category(symbol: "x.squareroot", title: "Mathematics")
    static var biology = Category(symbol: "leaf.fill", title: "Biology")
    static var literature = Category(symbol: "book.fill", title: "Literature")
    static var physics = Category(symbol: "bolt.fill", title: "Physics")
    static var sports = Category(symbol: "soccerball", title: "Sports")
    static var chemistry = Category(symbol: "atom", title: "Chemistry")
    static var philosophy = Category(symbol: "quote.bubble.fill", title: "Philosophy")
}
