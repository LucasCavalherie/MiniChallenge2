//
//  ContentView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var routerController = RouterController.shared
    
    var body: some View {
        NavigationStack(path: $routerController.viewStack) {
            VStack {
                // Essa tela geralmente
                Text("Stack vazia (é pra funcionar assim mesmo)")
                Button(action: {routerController.clear()}, label: {
                    Text("Resetar viewStack")
                })
            }
            .navigationDestination(for: String.self) { viewKey in
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
                    VStack (spacing: 0) {
                        NavBar()
                        Spacer().frame(minHeight: 0)
                        HomeView()
                        Spacer().frame(minHeight: 0)
                        TabBar()
                    }
                    .background(Color("Gray"))
                    .padding(.all, 0)
                    .navigationBarBackButtonHidden(true)
                    .ignoresSafeArea()
                case "Quiz":
                    QuizView()
                        .navigationBarBackButtonHidden(true)
                case "Rank":
                    RankView()
                        .navigationBarBackButtonHidden(true)
                case "Goal":
                    GoalView()
                        .navigationBarBackButtonHidden(true)
                case "Results":
                    // Mostrar view de Resultados
                    ResultsView()
                        .navigationBarBackButtonHidden(true)
                case "OlympicsHistory":
                    VStack (spacing: 0) {
                        NavBar()
                        Spacer().frame(minHeight: 0)
                        OlympicsHistoryView()
                        Spacer().frame(minHeight: 0)
                        TabBar()
                    }
                    .padding(.all, 0)
                    .navigationBarBackButtonHidden(true)
                    .ignoresSafeArea()
                case "Achievements":
                    VStack (spacing: 0) {
                        NavBar()
                        Spacer().frame(minHeight: 0)
                        Text("A ser implementado")
                        Button(action: {routerController.clear()}, label: {
                            Text("Resetar viewStack")
                        })
                        Spacer().frame(minHeight: 0)
                        TabBar()
                    }
                    .padding(.all, 0)
//                        .navigationBarBackButtonHidden(true)
                    .ignoresSafeArea()
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
