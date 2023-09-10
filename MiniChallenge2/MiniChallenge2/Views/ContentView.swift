//
//  ContentView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var routerController = RouterController.shared
    
    var body: some View {
        NavigationStack(path: $routerController.viewStack) {
            VStack {
                // Essa tela geralmente
                Text("Stack vazia")
            }
            .navigationDestination(for: String.self) { viewKey in
                // Usar funções do routerController para mudar telas
                switch viewKey {
                    
                case "Logo":
                    LogoView()
                        .navigationBarBackButtonHidden(true)
                case "OnboardingTela1":
                    Onboarding1()
                        .navigationBarBackButtonHidden(true)
                case "OnboardingTela2":
                    Onboarding2()
                        .navigationBarBackButtonHidden(true)
                case "OnboardingTela3":
                    Onboarding3()
                        .navigationBarBackButtonHidden(true)
                case "OnboardingTela4":
                    Onboarding4()
                        .navigationBarBackButtonHidden(true)
                case "Home":
                    // Mostrar view de Home
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                case "Quiz":
                    // Mostrar view de Quiz
                    QuizView()
                        .navigationBarBackButtonHidden(true)
                case "Rank":
                    // Mostrar view de Quiz
                    RankView()
                        .navigationBarBackButtonHidden(true)
                // Adicionar outros cases para outras telas
                default:
                    // Fazer tela de erro para quando a tela solicitada
                    // não existir
                    Text("Erro!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
