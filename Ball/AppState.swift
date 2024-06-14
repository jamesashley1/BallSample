//
//  AppState.swift
//  Ball
//
//  Created by James Ashley on 6/13/24.
//

import Foundation
import RealityKit
import SwiftUI

// this is a common way to pass data between different views
// AppState is just a class.
// The Observable macro is magic, though. It makes sure
// AppState gets updated between views and, if bound to,
// it can trigger other events. But here, we're just using
// it as a property wrapper for two values, the initial ball
// position and the ball entity itself.
@Observable
public class AppState {
    var ballEntity: Entity? = Entity()
    var initialPosition: SIMD3<Float>? = SIMD3(0.0,0.0,0.0)
}

