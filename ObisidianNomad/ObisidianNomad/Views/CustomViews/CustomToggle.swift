//
//  CustomToggle.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import SwiftUI

struct CustomToggle: View {
    @Binding var isOn: Bool
    
    var activeColor: Color = .customControl
    var inactiveColor: Color = .customControl.opacity(0.4)
    var circleColor: Color = .white
    var toggleAnimation: Animation = .easeInOut(duration: 0.20)

    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .circular)
            .fill(isOn ? activeColor : inactiveColor)
            .frame(width: 50, height: 30)
            .overlay(
                Circle()
                    .fill(circleColor)
                    .padding(2)
                    .offset(x: isOn ? 10 : -10)
            )
            .onTapGesture {
                withAnimation(toggleAnimation) {
                    isOn.toggle()
                }
            }
    }
}

#Preview {
    VStack {
        CustomToggle(isOn: .constant(true))
        CustomToggle(isOn: .constant(false))
    }
}
