//
//  ScoreArea.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

struct ScoreArea: View {
    var texto: String
    
    var body: some View {
        Text(texto)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 5)
            )
    }
}

struct ScoreArea_Previews: PreviewProvider {
    static var previews: some View {
        ScoreArea(texto: "teste")
    }
}
