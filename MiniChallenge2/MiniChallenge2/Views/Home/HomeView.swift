//
//  HomeView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var userController = UserController.shared
    @ObservedObject var olympicController = OlympicController.shared
    
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            VStack (alignment: .leading) {
                Text("Olimpíada atual")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(olympicController.olympic.championships) { championship in
                            SportCard(championship: championship)
                                .padding(.horizontal, 8)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.all, 0)
            
            VStack (alignment: .leading) {
                Text("Prêmios")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<6) { index in
                            Rectangle()
                                .fill(Color("Green"))
                                .frame(width: 140, height: 100)
                                .cornerRadius(16)
                                .padding(8)
                        }
                            
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.all, 0)
            
            Spacer()
            
            TabBar()
        }
        .background(Color("Gray"))
        .onDisappear{userController.saveData()}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
