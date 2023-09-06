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
                case "Results":
                    // Mostrar view de Resultados
                    ResultsView()
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
