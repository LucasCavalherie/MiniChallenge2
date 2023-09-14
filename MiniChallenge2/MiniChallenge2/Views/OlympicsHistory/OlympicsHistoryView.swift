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
        VStack{
            if userController.user.pastOlympics.count > 0 {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 20) {
                        ForEach(userController.user.pastOlympics) { pastOlympic in
                            VStack {
                                OlympicHistoryCard(olympic: pastOlympic)
                                Spacer()
                            }
                        }
                    }
                    .padding(.vertical, 0)
                    .padding(.horizontal, 36)
                }
            } else {
                Spacer()
                Text("Tá sentado esperando?")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Black"))
                    .padding(.vertical)
                
                Image("Mascote5")
                
                VStack (alignment: .leading) {
                    Text("Comece uma competição dentro da olimpíada atual.")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color("Black"))
                        .padding(.vertical)
                    
                    Text("Quando você encerrá-la suas medalhas aparecerão aqui.")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color("Black"))
                }
                .frame(width: 220)
                
                
                Spacer()
            }
        }
        .padding(.top, layoutController.navBarSize)
        .padding(.bottom, layoutController.tabBarSize)
        .padding(.horizontal, 0)
        .frame(maxWidth: .infinity)
        .background(Color("Gray"))
    }
}


struct OlympicsHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OlympicsHistoryView()
    }
}
