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
                    .fontWeight(.bold)
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(olympicController.olympic.championships) { championship in
                            SportCard(championship: championship)
                                .padding(.horizontal, 8)
                        }
                    }
                }
            }
            .padding()
            
            VStack (alignment: .leading) {
                Text("Prêmios")
                    .font(.title3)
                    .fontWeight(.bold)
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<6) { index in
                            Rectangle()
                                .fill(Color("Gray"))
                                .frame(width: 140, height: 100)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color("Green"), lineWidth: 3)
                                )
                                .padding(8)
                        }
                            
                    }
                }
            }
            .padding()
            
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
