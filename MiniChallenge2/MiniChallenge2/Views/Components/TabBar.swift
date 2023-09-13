//
//  TabBar.swift
//  MiniChallenge2
//
//  Created by Rafa Teivfik on 06/09/23.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var userController = UserController.shared
    @ObservedObject var layoutController = LayoutController.shared
    
    var body: some View {
        HStack {
            TabBarItem(viewKey: "OlympicsHistory", iconName: "chart.bar", text: "Histórico")
            Spacer()
            TabBarItem(viewKey: "Home", iconName: "sportscourt", text: "Olimpíada")
            Spacer()
            TabBarItem(viewKey: "Achievements", iconName: "medal", text: "Conquistas")
        }
        .padding(.all, 0)
        .frame(height: layoutController.tabBarSize, alignment: .top)
        .frame(maxWidth: .infinity, alignment: .top)
        .padding(.horizontal, 27)
        .padding(.vertical, 0)
        .border(width: 0.5, edges: [.top], color: Color("DarkGray"))
        .background(Color("White"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
