//
//  OlympicHistoryCard.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 12/09/23.
//

import Foundation
import SwiftUI

struct OlympicHistoryCard: View {
    @ObservedObject var routerController = RouterController.shared
    
    var olympic : Olympic
    
    var body: some View {
        Button(action: {
            routerController.resultSettings = ResultSettings(olympic: olympic, showNextButton: false)
            routerController.addKeyToViewStack(viewKey: "Results")
        }) {
            VStack(spacing: 0){
                VStack(spacing: 12) {
                    Text(olympic.name)
                        .font(.system(size: 15, weight: .semibold))
                    Text("Medalhas")
                        .font(.system(size: 15, weight: .regular))
                        .italic()
                }
                    .padding(.vertical, 0)
                    .padding(.horizontal, 25)
                    .frame(height: 72)
                    .frame(maxWidth: .infinity)
                    .background(Color("Green"))
                    .cornerRadius(10)
                VStack(spacing: 8) {
                    ForEach(0...3, id: \.self) { i in
                        if (olympic.championships.count > i) {
                            if (i > 0) {
                                OlympicHistoryCardDivider()
                            }
                            OlympicHistoryCardChampionship(championship: olympic.championships[i])
                        }
                    }
                    // Botão final
                    HStack(alignment: .center,spacing: 2){
                        Spacer()
                        Text("Todas")
                            .font(.system(size: 11, weight: .regular))
                            .italic()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 11, height: 11)
                    }
                    .padding(.all, 0)
                }
                .padding(.all, 8)
            }
        }
        .foregroundColor(Color("Black"))
        .padding(.all, 4)
        .frame(width: 141)
        .background(Color("White"))
        .cornerRadius(14)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .strokeBorder(Color("Green"), lineWidth: 4)
        )
    }
}
