//
//  ShadowStyles.swift
//  SwiftUI_example
//
//  Created by Daydou on 18/2/2024.
//

import SwiftUI

struct ShadowStyles: View {
    var body: some View {
        VStack (spacing:30){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
        Color("AccentColor")
            .frame(width: 100, height: 100)
            .cornerRadius(20)
            .modifier(Shadow(isLight: true))
            
            Color("AccentColor")
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .modifier(Shadow(isLight: false))
    }
    }
}

struct Shadow: ViewModifier{
    let isLight: Bool
    
    var lightShadowColor: Color{
        isLight ? Color("Shadow_btn_1_color") : Color("Shadow_btn_3_color")
    }
    
    func body(content: Content) -> some View {
        content
            .shadow(color: lightShadowColor,radius: 10, x: -5, y: -5)
            .shadow(color: Color("Shadow_btn_2_color"),radius: 10, x: 5, y: 5)
    }
}

struct ShadowStyles_Previews: PreviewProvider {
    static var previews: some View {
        ShadowStyles()
    }
}
