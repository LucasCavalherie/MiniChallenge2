//
//  Onboarding3.swift
//  MiniChallenge2
//
//  Created by Ligia Naomi Nakase on 09/09/23.
//

import SwiftUI

struct Onboarding3: View {
    @ObservedObject var routerController = RouterController.shared
    var body: some View {
        VStack {
            HStack {
                Button {
                    SoundController.shared.play(sound: .clickFast)
                    routerController.addKeyToViewStack(viewKey: "OnboardingTela2")
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black"))
                    Text("Voltar")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black"))
                }
                
                Spacer()
                
                Button {
                    SoundController.shared.play(sound: .clickFast)
                    UserController.shared.userDidFinishOnboarding()
                    routerController.addKeyToViewStack(viewKey: "Home")
                } label: {
                    Text("Pular")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black"))
                }
            }
            .padding(.horizontal,28)
            .padding(.top,16)
            
            Spacer()
            
            Image("Mascote3")
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("💪️ A Olimpíada é tua!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
                    .padding(.bottom,8)
                Text("Em cada esporte, estabelecemos metas para superar outras nações e possibilitar que você se torne um \(Text("campeão").bold())!")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("Black"))
                    .padding(.bottom,24)
                
                Button {
                    SoundController.shared.play(sound: .clickFast)
                    routerController.addKeyToViewStack(viewKey: "OnboardingTela4")
                } label: {
                    Text("Próximo")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color("White"))
                        .padding(.vertical,16)
                        .frame(maxWidth: .infinity)
                }
                .background(Color("Blue"))
                .cornerRadius(10)
                
            }.padding(.horizontal,28)
            
            
            
        }.background(Color("LightGray"))
    }
}


struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
