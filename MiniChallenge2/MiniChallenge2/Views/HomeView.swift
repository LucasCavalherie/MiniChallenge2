//
//  HomeView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var userController = UserController()
    
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text(userController.user.name)
                        .font(.title)
                    Text("Nível " + String(userController.user.level))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "medal.fill")
                    Text(String(userController.user.medalScore))
                }
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(.black)
                .cornerRadius(50)
            }
            .padding(32)
            .background(Color("White"))
            
            Spacer()
            
            Text("Temporada da Olimpíada")
            
            
            Spacer()
        }
        .background(Color("Gray"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
