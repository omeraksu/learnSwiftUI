//
//  landmarkApp.swift
//  landmark
//
//  Created by Ömer Aksu on 13.06.2021.
//

import SwiftUI

@main
struct landmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
