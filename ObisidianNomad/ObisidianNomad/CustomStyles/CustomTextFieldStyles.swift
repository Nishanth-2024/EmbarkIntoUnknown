//
//  CustomTextFieldStyles.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 11/05/24.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    var borderColor: AnyShapeStyle
    var borderWidth: CGFloat
    var backgroundColor: AnyShapeStyle
    var textColor: AnyShapeStyle

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(8)
            .foregroundStyle(textColor)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(backgroundColor)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(backgroundColor, lineWidth: borderWidth)
            )
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .cornerRadius(10)
            .padding()
    }
}
