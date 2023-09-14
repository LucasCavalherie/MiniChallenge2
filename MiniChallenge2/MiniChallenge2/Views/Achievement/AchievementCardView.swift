//
//  AchievementCardView.swift
//  Olympia
//
//  Created by Rafa (Ruffles) on 14/09/23.
//

import Foundation
import SwiftUI

struct AchievementCardView : View  {
    var achievement : Achievement
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(spacing: 0) {
                Text(achievement.name)
                    .font(.system(size: 17, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(achievement.description)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(Color("DarkGray"))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.all, 0)
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: achievement.sfSymbol)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 17, height: 17)
        }
        .foregroundColor(Color("Black"))
        .padding(.horizontal, 16)
        .padding(.vertical, 11)
        .frame(maxWidth: .infinity)
        .background(cardColor())
        .cornerRadius(12)
    }
    
    func cardColor() -> Color {
        Color(achievement.unlocked ? "Pink" : "White")
    }
}
