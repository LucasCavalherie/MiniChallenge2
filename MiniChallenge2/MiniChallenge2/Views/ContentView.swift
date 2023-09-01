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
        NavigationStack(path: routerController.navigationStackBinding) {
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
