//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by QiuXc on 2023/8/27.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // 相当于全局 Store
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
