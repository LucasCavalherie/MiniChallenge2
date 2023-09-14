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
    @Published var resultSettings : ResultSettings = ResultSettings(olympic: Olympic(name: "Error", medalScore: 0, championships: []))
    private let baseStack : [String] = ["Home"]
    private let startStack : [String] = ["Logo"]
    
    private init() {
        start()
    }
    
    func addKeyToViewStack(viewKey: String) -> Void {
        viewStack.append(viewKey)
        self.objectWillChange.send()
    }
    
    func switchCurrentView(viewKey: String) -> Void {
        viewStack.removeLast()
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
    
    func start() -> Void {
        viewStack = startStack
        self.objectWillChange.send()
    }
    
    func setResultSettings(_ settings : ResultSettings) -> Void {
        resultSettings = settings
    }
}

struct ResultSettings {
    let olympic : Olympic
    let showNextButton : Bool
    
    init(olympic: Olympic, showNextButton: Bool = true) {
        self.olympic = olympic
        self.showNextButton = showNextButton
    }
}
