//
//  OlympicsHistoryView.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 11/09/23.
//

import Foundation
import SwiftUI

struct OlympicsHistoryView: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var userController = UserController.shared
    @ObservedObject var olympicController = OlympicController.shared
    @ObservedObject var layoutController = LayoutController.shared
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 20) {
                ForEach(userController.user.pastOlympics) { pastOlympic in
                    OlympicHistoryCard(olympic: pastOlympic)
                }
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 36)
        }
        .padding(.top, 48)
        .frame(height: layoutController.contentSize(), alignment: .top)
        .frame(maxWidth: .infinity, maxHeight: layoutController.contentSize())
        .background(Color("Gray"))
        .onDisappear{userController.saveData()}
    }
}
