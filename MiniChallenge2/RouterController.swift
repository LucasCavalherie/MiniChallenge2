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
    
    private var router : Router
    private let baseStack : [String] = ["Home"]
    var navigationStackBinding : Binding<[String]> = Binding(get: {[]}, set:{_ in })
    
    private init() {
        router = Router()
        clear()
        navigationStackBinding = Binding(
            get: {self.router.viewStack},
            set: {
                self.router.viewStack = $0
            }
        )
    }
    
    func addKeyToViewStack(viewKey: String) -> Void {
        router.viewStack.append(viewKey)
        self.objectWillChange.send()
    }
    
    func goBack() -> Void {
        router.viewStack.removeLast()
        self.objectWillChange.send()
    }
    
    func clear() -> Void {
        router.viewStack = baseStack
        self.objectWillChange.send()
    }
    
    func getViewStack() -> [String] {
        return router.viewStack
    }
}
