//
//  Router.swift
//  NanoChallenge1
//
//  Created by Rafa (Ruffles) on 26/07/23.
//

import Foundation
import SwiftUI

class RouterController : ObservableObject {
    static var shared: RouterController = {
        let instance = RouterController()
        return instance
    }()
    
    @Published var viewStack : [String] = []
    private let baseStack : [String] = ["Logo"]
    
    private init() {
        clear()
    }
    
    func addKeyToViewStack(viewKey: String) -> Void {
        viewStack.append(viewKey)
        self.objectWillChange.send()
    }
    
    func goBack() -> Void {
        viewStack.removeLast()
        self.objectWillChange.send()
    }
    
    func clear() -> Void {
        viewStack = baseStack
        self.objectWillChange.send()
    }
}
