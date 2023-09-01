//
//  SportCard.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 31/08/23.
//

import SwiftUI

struct SportCard: View {
    let sport: Sport
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(sport.color)
            
            VStack {
                HStack (alignment: .top) {
                    HStack {
                        Image(systemName: sport.symbolName)
                        Text(sport.name)
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .cornerRadius(20)
                    
                    Spacer()
                    
                    Image(systemName: "info.circle.fill")
                        .padding(.horizontal, 4)
                        .padding(.vertical, 4)
                        .font(.headline)
                        .foregroundColor(Color("White"))
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                HStack {
                    Text("Competir")
                        .font(.body)
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 36)
                .background(Color("White"))
                .cornerRadius(10)
                
            }
            .padding()
        }
        .frame(width: 220, height: 320)
        .cornerRadius(20)
        
    }
}

struct SportCard_Previews: PreviewProvider {
    static var previews: some View {
        SportCard(sport: SportsData().sport[0])
    }
}
