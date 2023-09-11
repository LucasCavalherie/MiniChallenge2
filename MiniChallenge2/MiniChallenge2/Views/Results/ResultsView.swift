//
//  Results.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 06/09/23.
//

import SwiftUI

struct ResultsView: View {
    @StateObject var routerController = RouterController.shared
    @StateObject var olympicController = OlympicController.shared
    
    var body: some View {
        VStack {
            Text("Resultados")
            Button {
                routerController.clear()
                olympicController.createOlympic()
            } label: {
                Text("Home")
            }
        }
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
