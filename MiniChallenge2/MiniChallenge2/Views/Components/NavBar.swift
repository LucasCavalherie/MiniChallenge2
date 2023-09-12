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
            VStack (alignment: .leading) {
                Text("Brasil")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 2)
                    .foregroundColor(Color("Black"))
                
                Text("Nível " + String(userController.user.level))
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
        .padding(32)
        .frame(height: layoutController.navBarSize)
        .frame(maxWidth: .infinity, maxHeight: layoutController.navBarSize)
        .background(Color("White"))
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
