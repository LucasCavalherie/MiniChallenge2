//
//  AchievementView.swift
//  Olympia
//
//  Created by Rafa (Ruffles) on 14/09/23.
//

import Foundation
import SwiftUI

struct AchievementView: View {
    @ObservedObject var layoutController = LayoutController.shared
    @ObservedObject var achievementsController = AchievementsController.shared
    
    var body: some View {
        VStack (alignment: .center, spacing: 28) {
            VStack (alignment: .center, spacing: 20) {
                Text("Conquistas")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("Black"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack (alignment: .center, spacing: 20) {
                    ForEach(achievementsController.achievements, id: \.self) { achievement in
                        AchievementCardView(achievement: achievement)
                    }
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 8)
            }
            .padding(.all, 0)
            VStack (alignment: .center, spacing: 20) {
                Text("Prêmios")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("Black"))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.all, 0)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 22) {
                    ForEach(achievementsController.prizes, id: \.self) { prize in
                        Image(prize.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 136, height: 96)
                    }
                }
                .padding(.horizontal, 34)
                .padding(.vertical, 0)
            }
            .padding(.horizontal, -34)
            .padding(.vertical, 0)
        }
        .padding(.horizontal, 36)
        .padding(.top, layoutController.navBarSize)
        .padding(.bottom, layoutController.tabBarSize)
    }
}
