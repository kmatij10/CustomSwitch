//
//  ContentView.swift
//  CustomSwitch
//
//  Created by Kristina Matijasic on 10.02.2024..
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environmentManager: EnvironmentManager

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundStyle(Color("imageColor"))
            Text("Custom Toggle")
            CustomToggle(
                isOn: $environmentManager.isLightMode,
                onImage: Image("backgroundOn"),
                offImage: Image("backgroundOff"),
                onThumbImage: Image("buttonOn"),
                offThumbImage: Image("buttonOff")
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(EnvironmentManager())
}
