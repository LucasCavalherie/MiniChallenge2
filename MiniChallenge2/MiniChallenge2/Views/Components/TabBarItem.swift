//
//  TabBarItem.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 06/09/23.
//

import Foundation
import SwiftUI

struct TabBarItem: View {
    @ObservedObject var routerController = RouterController.shared
    
    let viewKey : String
    let iconName: String
    let text : String
    
    var body: some View {
        Button(action: {routerController.switchCurrentView(viewKey: viewKey)}) {
            VStack (spacing: -4) {
                Image(systemName: formattedIconName())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding(.all, 10)
                Text(text)
                    .font(.system(size: 10, weight: .medium))
                    .foregroundColor(Color("Black"))
                    .frame(width: 60, height: 12)
            }
            .foregroundColor(Color("Black"))
            .frame(width: 75, height: 50)
            .padding(.all, -1)
        }
    }
    
    func formattedIconName() -> String {
        return routerController.viewStack.last == viewKey ? iconName+".fill" : iconName
    }
}
