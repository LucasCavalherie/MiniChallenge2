//
//  LayoutController.swift
//  MiniChallenge2
//
//  Created by Rafa (Ruffles) on 12/09/23.
//

import Foundation
import SwiftUI

class LayoutController : ObservableObject {
    static var shared: LayoutController = {
        let instance = LayoutController()
        return instance
    }()
    
    @Published var tabBarSize : CGFloat = 104.0
    @Published var navBarSize : CGFloat = 128.0
    
    func contentSize() -> CGFloat {
        return UIScreen.main.bounds.height - tabBarSize - navBarSize
    }
}
