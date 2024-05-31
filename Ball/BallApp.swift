//
//  BallApp.swift
//  Ball
//
//  Created by James Ashley on 5/15/24.
//

import SwiftUI

@main
struct BallApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(immersiveSpaceId: "ImmersiveSpace")
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
