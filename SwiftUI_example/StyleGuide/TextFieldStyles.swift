//
//  TextFieldStyles.swift
//  SwiftUI_example
//
//  Created by Daydou on 19/2/2024.
//

import SwiftUI

struct TextFieldStyles: View {
    var body: some View {
        VStack {
            Text("Hello, Daydou!")
            TextField("", text: .constant("text style"))
                .textFieldStyle(RedTextFieldStyle())
        }.padding()
        
    }
}

struct RedTextFieldStyle: TextFieldStyle {
    enum TextFieldState{
        case active
        case inactive
        case notFilled
        case filled
        case error
    }
    let gradient = LinearGradient(colors: [Color("TextFiled_color"),Color("gray_background_color")], startPoint: .topLeading, endPoint: .bottomTrailing)
    let cornerRadius: CGFloat = 16
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .foregroundColor(Color("dark_text_color"))
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius)
                .fill(gradient))
            .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color("AccentColor"), lineWidth: 1))
    }
    
}

struct TextFieldStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyles()
    }
}
