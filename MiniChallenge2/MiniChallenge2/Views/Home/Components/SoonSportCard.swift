//
//  SoonSportCard.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 06/09/23.
//

import SwiftUI

struct SoonSportCard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("DarkGray"))
                .opacity(0.8)
            
            Image("lockSport")
                .opacity(0.6)
            
            VStack {
                HStack (alignment: .top) {
                    HStack {
                        Image(systemName: "lock.fill")
                        Text("Em breve")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 4)
                    .padding(.vertical, 4)
                    .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "lock.fill")
                    Text("Bloqueado")
                }
                .font(.body)
                .foregroundColor(Color("White"))
                .fontWeight(.semibold)
                .padding(.vertical, 12)
                .padding(.horizontal, 36)
                .background(Color("DarkGray"))
                .cornerRadius(10)
            }
            .padding()
        }
        .frame(width: 220, height: 450)
        .cornerRadius(20)
    }
}

struct SoonSportCard_Previews: PreviewProvider {
    static var previews: some View {
        SoonSportCard()
    }
}
