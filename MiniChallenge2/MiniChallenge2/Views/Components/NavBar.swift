//
//  NavBar.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import SwiftUI

struct NavBar: View {
    @ObservedObject var userController = UserController.shared
    @ObservedObject var layoutController = LayoutController.shared
    
    var body: some View {
        HStack {
            HStack {
                Text("Brasil")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
                
                Text(" - ")
                    .font(.headline)
                    .foregroundColor(Color("Black"))
                
                Text(playerTitle())
                    .foregroundColor(Color("Black"))
                    .font(.headline)
                    .italic()
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "medal.fill")
                Text(String(userController.user.medalScore))
            }
            .font(.headline)
            .foregroundColor(Color("Black"))
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color("Yellow"))
            .cornerRadius(50)
        }
        .padding(.horizontal, 32)
        .padding(.top, 64)
        .padding(.bottom)
        .frame(height: layoutController.navBarSize)
        .frame(maxWidth: .infinity, maxHeight: layoutController.navBarSize)
        .background(Color("White"))
    }
    
    func playerTitle() -> String {
        let achievement = userController.getHighestAchievement().name
        let level = "Nível " + String(userController.user.level)
        return achievement+" "+level
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
