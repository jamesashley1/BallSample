//
//  ImmersiveView.swift
//  Ball
//
//  Created by James Ashley on 5/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @State private var myBall: Entity = Entity()
    @Environment(AppState.self) private var appState
    
    
    var body: some View {
        
        RealityView { content in
            // Add the initial RealityKit scene
            if let scene = try? await Entity(named: "FallingBalls", in: realityKitContentBundle) {
                content.add(scene)
                
                // since we have both the scene and the appState
                // available to us, we can grab our ball by name
                // and assign it to the ballEntity property of appState.
                // we'll do the same with the ball's transform.translation
                appState.ballEntity = scene.findEntity(named: "RightSphere")
                appState.initialPosition = appState.ballEntity?.transform.translation
            }
        }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveView()
}
