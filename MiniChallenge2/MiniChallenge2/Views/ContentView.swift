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
                Text("Stack vazia (é pra funcionar assim mesmo)")
                Button(action: {routerController.clear()}, label: {
                    Text("Resetar viewStack")
                })
            }
            .navigationDestination(for: String.self) { viewKey in
                // Usar funções do routerController para mudar telas
                switch viewKey {
                case "Home":
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                case "Quiz":
                    QuizView()
                        .navigationBarBackButtonHidden(true)
                case "Rank":
                    RankView()
                        .navigationBarBackButtonHidden(true)
                case "Results":
                    // Mostrar view de Resultados
                    ResultsView()
                        .navigationBarBackButtonHidden(true)
                case "OlympicsHistory":
                    Text("A ser implementado")
                    Button(action: {routerController.clear()}, label: {
                        Text("Resetar viewStack")
                    })
//                        .navigationBarBackButtonHidden(true)
                case "Achievements":
                    Text("A ser implementado")
                    Button(action: {routerController.clear()}, label: {
                        Text("Resetar viewStack")
                    })
//                        .navigationBarBackButtonHidden(true)
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
