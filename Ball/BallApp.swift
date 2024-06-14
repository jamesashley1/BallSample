//
//  BallApp.swift
//  Ball
//
//  Created by James Ashley on 5/15/24.
//

import SwiftUI

@main
struct BallApp: App {
    // instantiating a global class called app state
    // to pass values between views
    // we pass appState into ContentView and ImmersiveView
    // with the environment function
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView(immersiveSpaceId: "ImmersiveSpace")
                .environment(appState)
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
                .environment(appState)
        }
    }
}
