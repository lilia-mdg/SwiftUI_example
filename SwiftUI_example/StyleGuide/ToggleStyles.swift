//
//  ToggleStyles.swift
//  SwiftUI_example
//
//  Created by Daydou on 19/2/2024.
//

import SwiftUI

struct ToggleStyles: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Toggle("toggle", isOn: .constant(true))
            Toggle("toggle", isOn: .constant(false))
            
            Toggle("toggle", isOn: .constant(true))
                .toggleStyle(AccentToggleStyle(isLabelHidden: true))
            Toggle("toggle", isOn: .constant(false))
                .toggleStyle(AccentToggleStyle(isLabelHidden: true))
        }.padding()
    }
}

struct AccentToggleStyle: ToggleStyle{
    let isLabelHidden: Bool
    let size: CGFloat = 44
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            if !isLabelHidden{
                configuration.label
                Spacer()
            }
            //            Image(systemName: configuration.isOn ? "square.fill" : "square")
            //                .foregroundColor(Color("AccentColor") )
            
            //            Capsule().fill(configuration.isOn ? Color("AccentColor") : Color("Disabled_btn_color"))
            //                .frame(width: 120, height: 60)
            //                .modifier(Shadow(isLight: configuration.isOn))
            
            HStack(spacing: 16) {
                if configuration.isOn {
                    Text("on")
                        .boldBodyStyle()
                        .foregroundColor(.white)
                        .frame(width: size, height: size)
                }
                
                Circle()
                    .fill(.white)
                    .frame(width: size, height: size)
                    .shadow(color: Color("Shadow_btn_1_color"), radius: 2, x: 0, y: 2)
                
                if !configuration.isOn {
                    Text("off")
                        .boldBodyStyle()
                        .foregroundColor(Color("dark_text_color"))
                        .frame(width: size, height: size)
                }

            }.padding(8)
                .background(Capsule().fill(configuration.isOn ? Color("AccentColor") : Color("Disabled_btn_color"))
                    .frame(width: 120, height: 60)
                    .modifier(Shadow(isLight: configuration.isOn)))
            
            
        }
    }
}

struct ToggleStyles_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyles()
    }
}
