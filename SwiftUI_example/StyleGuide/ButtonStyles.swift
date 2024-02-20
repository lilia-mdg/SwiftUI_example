//
//  ButtonStyleGuide.swift
//  SwiftUI_example
//
//  Created by Daydou on 18/2/2024.
//

import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        VStack (spacing: 30){
            Text("Hey, Daydou!")
            Button{
                
            } label: {
                Text("small primary button style")
            }.buttonStyle(SmallPrimaryButtonStyle())
            
            Button{
                
            } label: {
                Text("small primary button style - disabled")
            }.buttonStyle(SmallPrimaryButtonStyle())
                .disabled(true)
            
            Button{
                
            } label: {
                Text("large primary button style")
            }.buttonStyle(LargePrimaryButtonStyle())
            
            Button{
                
            } label: {
                Image(systemName: "magnifyingglass")
            }.buttonStyle(IconButtonStyle())
        }
    }
}

struct SmallPrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnable
    
    var backgroundColor: Color{
        isEnable ? Color("AccentColor") : Color("Disabled_btn_color")
    }
    
    var foregroundColor: Color{
        isEnable ? .white : Color("dark_text_color")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .captionStyle()
            .padding(12.5)
            .foregroundColor(foregroundColor)
            .background(Capsule().fill(backgroundColor)
//            .scaleEffect(configuration.isPressed ? 0.8 : 1)
//                .shadow(color: lightShadowColor,radius: 10, x: -5, y: -5)
//                .shadow(color: Color("Shadow_btn_2_color"),radius: 10, x: 5, y: 5)
                .modifier(Shadow(isLight: true)))
    }
}

struct LargePrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnable
    
    var backgroundColor: Color{
        isEnable ? Color("AccentColor") : Color("Disabled_btn_color")
    }
    
    var foregroundColor: Color{
        isEnable ? .white : Color("dark_text_color")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .boldBodyStyle()
            .padding(18)
            .foregroundColor(foregroundColor)
            .frame(maxWidth: .infinity)
            .background(Capsule().fill(backgroundColor)
//            .scaleEffect(configuration.isPressed ? 0.8 : 1)
//                .shadow(color: lightShadowColor,radius: 10, x: -5, y: -5)
//                .shadow(color: Color("Shadow_btn_2_color"),radius: 10, x: 5, y: 5)
                .modifier(Shadow(isLight: true)))
    }
}

struct IconButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnable
    
    var backgroundColor: Color{
        isEnable ? Color("AccentColor") : Color("Disabled_btn_color")
    }
    
    var foregroundColor: Color{
        isEnable ? .white : Color("dark_text_color")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 24))
            .padding(18)
            .foregroundColor(foregroundColor)
            .frame(width: 64, height: 64)
            .background(
//                Capsule()
                RoundedRectangle(cornerRadius: 16)
                .fill(backgroundColor)
                .modifier(Shadow(isLight: true)))
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles()
    }
}
