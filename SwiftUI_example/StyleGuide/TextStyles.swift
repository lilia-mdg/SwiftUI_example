//
//  TextStyles.swift
//  SwiftUI_example
//
//  Created by Daydou on 18/2/2024.
//

import SwiftUI

struct TextStyles: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .modifier(TitleStyle())
                .titleStyle()
            Text("Hello, World!")
//                .modifier(TitleStyle())
                .bodyStyle()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .modifier(TitleStyle())
                .boldBodyStyle()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .modifier(TitleStyle())
                .captionStyle()
        }
    }
}

struct TitleStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemiBold, size: 48, relativeTo: .title))
    }
}

struct BodyStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameMedium, size: 20, relativeTo: .body))
    }
}

struct BoldBodyStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemiBold, size: 20, relativeTo: .body))
    }
}

struct CaptionStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemiBold, size: 12, relativeTo: .caption))
    }
}

struct Style {
    static let fontNameSemiBold = "AvenirNext-SemiBold"
    static let fontNameMedium = "AvenirNext-Medium"
}

extension View{
    public func titleStyle() -> some View {
        modifier(TitleStyle())
    }
    public func bodyStyle() -> some View {
        modifier(BodyStyle())
    }
    public func boldBodyStyle() -> some View {
        modifier(BoldBodyStyle())
    }
    public func captionStyle() -> some View {
        modifier(CaptionStyle())
    }
}

struct TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextStyles()
    }
}
