//
//  CustomTextField.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 11/05/24.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var placeholderColor: Color

    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
            if text.isEmpty {
                Text(placeholder).foregroundStyle(placeholderColor)
                    .padding(10)
            }
        }
    }
}

#Preview {
    CustomTextField(
        text: .constant("Text Field"),
        placeholder: "Placeholder",
        placeholderColor: .accentColor
    )
    .frame(width: 200, alignment: .center)
    .font(.system(size: 48))
    .padding()
    .background(RoundedRectangle(cornerRadius: 12.0).fill(Color.gray.opacity(0.25)))
}
