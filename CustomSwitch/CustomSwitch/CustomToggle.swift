//
//  CustomToggle.swift
//  CustomSwitch
//
//  Created by Kristina Matijasic on 11.02.2024..
//

import SwiftUI

struct CustomToggle: View {
    @Binding var isOn: Bool
    var onImage: Image
    var offImage: Image
    var onThumbImage: Image
    var offThumbImage: Image

    private let switchWidth: CGFloat = 100
    private let switchHeight: CGFloat = 60
    private let thumbSize: CGFloat = 40
    private let thumbPadding: CGFloat = 3

    var body: some View {
        ZStack {
            (isOn ? onImage : offImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                if isOn {
                    Spacer()
                }
                (isOn ? onThumbImage : offThumbImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: thumbSize)
                    .padding(.all, thumbPadding)
                if !isOn {
                    Spacer()
                }
            }
        }
        .frame(width: switchWidth, height: switchHeight)
        .onTapGesture {
            withAnimation {
                isOn.toggle()
            }
        }
    }
}
