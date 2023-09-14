//
//  ContentView.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var routerController = RouterController.shared
    let showBarViews: [String] = ["Home", "OlympicsHistory", "Achievements"]
    
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
                ZStack {
                    switch viewKey {
                    case "Logo":
                        LogoView()
                    case "OnboardingTela1":
                        Onboarding1()
                    case "OnboardingTela2":
                        Onboarding2()
                    case "OnboardingTela3":
                        Onboarding3()
                    case "OnboardingTela4":
                        Onboarding4()
                    case "Home":
                        HomeView()
                    case "Quiz":
                        QuizView()
                    case "Rank":
                        RankView()
                    case "Goal":
                        GoalView()
                    case "Results":
                        ResultsView()
                    case "OlympicsHistory":
                        OlympicsHistoryView()
                    case "Achievements":
                        AchievementView()
                    // Adicionar outros cases para outras telas
                    default:
                        // Fazer tela de erro para quando a tela solicitada
                        // não existir
                        Text("Erro!")
                    }
                    if (showBarViews.contains(viewKey)) {
                        VStack {
                            NavBar()
                            Spacer()
                            TabBar()
                        }
                        .ignoresSafeArea()
                    }
                }
                .background(Color("Gray"))
                .padding(.all, 0)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
