//
//  LogoView.swift
//  MiniChallenge2
//
//  Created by Ligia Naomi Nakase on 10/09/23.
//

import SwiftUI

struct LogoView: View {
    @ObservedObject var routerController = RouterController.shared
    
    var body: some View {
        ZStack {
            Image("Pattern")
                .resizable(resizingMode: .tile)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("Logo")
                
                Spacer()
                
                Button {
                    if UserController.shared.hasUserFinishedOnboarding() {
                        routerController.clear()
                    } else {
                        routerController.addKeyToViewStack(viewKey: "OnboardingTela1")
                    }
                } label: {
                    Text("Iniciar")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black"))
                        .padding(.vertical,16)
                        .frame(maxWidth: .infinity)
                }
                .background(Color("White"))
                .cornerRadius(10)
                .padding(.horizontal,28)
                .padding(.bottom)
            }
        }
    }
}
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
