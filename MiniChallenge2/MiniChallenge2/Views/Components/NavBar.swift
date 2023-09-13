//
//  NavBar.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 01/09/23.
//

import SwiftUI

struct NavBar: View {
    @ObservedObject var userController = UserController.shared
    
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
        .padding(.horizontal, 32)
        .padding(.top, 32)
        .padding(.bottom)
        .background(Color("White"))
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
