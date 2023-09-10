//
//  Onboarding2.swift
//  MiniChallenge2
//
//  Created by Ligia Naomi Nakase on 09/09/23.
//

import SwiftUI

struct Onboarding2: View {
    @ObservedObject var routerController = RouterController.shared
    var body: some View {
        VStack {
            HStack {
                Button {
                    routerController.addKeyToViewStack(viewKey: "OnboardingTela1")
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
            
            Image("Mascote2")
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("🤸‍♂️ Primeiros passos!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
                    .padding(.bottom,8)
                Text("Temos uma dinâmica de \(Text("Quiz").bold()), onde você escolhe um esporte e aprende sobre ele enquanto se diverte!")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("Black"))
                    .padding(.bottom,24)
                
                Button {
                    routerController.addKeyToViewStack(viewKey: "OnboardingTela3")
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


struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
