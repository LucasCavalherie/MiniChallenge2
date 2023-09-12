//
//  HomeView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct ProgressOlympicBar: View {
    var value: Int
    var total: Int
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .foregroundColor(Color("White"))
                
                Rectangle().frame(width: min(CGFloat(Float(self.value) / Float(self.total))*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color("Blue"))
                
            }.cornerRadius(45.0)
        }
    }
}

struct HomeView: View {
    @ObservedObject var routerController = RouterController.shared
    @ObservedObject var userController = UserController.shared
    @ObservedObject var olympicController = OlympicController.shared
    @ObservedObject var layoutController = LayoutController.shared
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Olimpíada")
                .font(.title2)
                .foregroundColor(Color("Black"))
                .fontWeight(.bold)
                .padding()
            
            HStack {
                ProgressOlympicBar(value: olympicController.countChampionshipDone(), total: userController.user.unlockedSports.count)
                    .frame(height: 20)
                
                Button {
                    olympicController.finishOlympic()
                    routerController.addKeyToViewStack(viewKey: "Results")
                } label: {
                    HStack {
                        Text("Encerrar")
                    }
                    .font(.body)
                    .foregroundColor(Color("Black"))
                    .fontWeight(.semibold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 12)
                    .background(Color("White"))
                    .cornerRadius(10)
                }
            }
            .padding(.bottom)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(olympicController.olympic.championships) { championship in
                        if championship.unlock {
                            UnlockedSportCard(championship: championship)
                                .padding(.horizontal, 8)
                        } else {
                            if olympicController.canUnlockSport(championship: championship) {
                                LockedSportCard(championship: championship)
                                    .padding(.horizontal, 8)
                            } else {
                                SoonSportCard()
                                    .padding(.horizontal, 8)
                            }
                        }

                    }
                }
            }
        }
        .padding(.all)
        .frame(maxWidth: .infinity, maxHeight: layoutController.contentSize())
        .background(Color("Gray"))
        .onDisappear{userController.saveData()}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
