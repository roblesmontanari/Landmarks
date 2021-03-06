//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Robles Montanari on 02/05/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self,
                            category: "LandmarkNear")
        #endif
    }
}
