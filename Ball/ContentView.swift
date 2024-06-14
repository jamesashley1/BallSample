//
//  ContentView.swift
//  Ball
//
//  Created by James Ashley on 5/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    // we passed appState to ContentView in BallApp
    // we are able to pull it out of the Environment
    // macro by passing a type in
    @Environment(AppState.self) private var appState
    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    
    @State var immersiveSpaceId: String
    
    
    // our function for resetting the ball position
    // we grab both the position of the ball and
    // the ball entity from appState. If they are
    // both not nil, we set the ball entity
    // to its initial position which we capture in
    // the ImmersiveView view
    func ResetBall(){
        if let position = appState.initialPosition {
            if let ball = appState.ballEntity {
                ball.transform.translation = position
            }
        }
    }
    

    var body: some View {
        VStack {

            Text("Hello, world!")
            // nothing complicated
            // Immersive View button calls the built-in
            // Environment function openImmersiveSpace
            Button("Immersive View"){
                Task{
                    await openImmersiveSpace(id: immersiveSpaceId)
                }
            }
            // and here the ResetBall button
            // action calls our custom ResetBall func
            Button("Reset Ball"){
                ResetBall()
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(immersiveSpaceId: "ImmersiveSpace")
}
