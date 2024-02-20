//
//  ContentView.swift
//  SwiftUI_example
//
//  Created by Daydou on 17/2/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        TabView{
            FoodGalleryView()
                .tag(1)
                .tabItem {
                    Label("Food", image: "item nav")
                }
            
            Text("Person")
                .tag(2)
                .tabItem {
                    Label("person", image: "item nav2")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
