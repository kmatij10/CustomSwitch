//
//  CustomSwitchApp.swift
//  CustomSwitch
//
//  Created by Kristina Matijasic on 10.02.2024..
//

import SwiftUI

@main
struct CustomSwitchApp: App {
    @StateObject var environmentManager = EnvironmentManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(environmentManager)
                .preferredColorScheme(environmentManager.isLightMode ? .light : .dark)
        }
    }
}
