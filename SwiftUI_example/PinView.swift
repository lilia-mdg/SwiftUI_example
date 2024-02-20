//
//  PinView.swift
//  SwiftUI_example
//
//  Created by Daydou on 20/2/2024.
//

import SwiftUI

struct PinView: View {
    
    @State private var first = ""
    @State private var second = ""
    @State private var third = ""
    @State private var fourth = ""
    
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 24){
                Text("Pin")
                    .titleStyle()
                Text("Please enter your PIN code")
                    .bodyStyle()
                    .padding(.bottom, 32)
                
                HStack(spacing:24){
                    TextField("", text: $first)
                    TextField("", text: $second)
                    TextField("", text: $third)
                    TextField("", text: $fourth)
                }.textFieldStyle(RedTextFieldStyle())
                    .textContentType(.telephoneNumber)
                
                Button{
                }label: {
                    Text("Submit")
                }.buttonStyle(LargePrimaryButtonStyle())
                
//                Spacer()
            }.padding(24)
            //            .padding(.top, 170)
            .padding(.horizontal, 24)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        
                    }label: {
                        Label("", image: "shield")
                    }
                }
            }
        }
    }
}


struct PinView_Previews: PreviewProvider {
    static var previews: some View {
        PinView()
    }
}
