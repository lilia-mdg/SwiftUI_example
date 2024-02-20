//
//  SwiftUI_exampleApp.swift
//  SwiftUI_example
//
//  Created by Daydou on 17/2/2024.
//

import SwiftUI

@main
struct SwiftUI_exampleApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            SubscribeView(email: .constant("lilia@gmail.com"))
        }
    }
}
