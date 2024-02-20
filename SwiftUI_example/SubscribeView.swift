//
//  SubscribeView.swift
//  SwiftUI_example
//
//  Created by Daydou on 19/2/2024.
//

import SwiftUI

struct SubscribeView: View {
    
    @Binding var email: String
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 16){
                Text("Subscribe")
                    .titleStyle()
                Text("Subscribe to our newsletter & stay updated for more posts.")
                    .bodyStyle()
                    .padding(.bottom, 32)
                
                TextField("email", text: $email)
                    .textFieldStyle(RedTextFieldStyle())
                    .padding(.bottom, 8)
                
                Button{
                    
                }label: {
                    Text("Submit")
                }.buttonStyle(LargePrimaryButtonStyle())
                
//                Spacer()
            }
//            .padding(.top, 170)
            .padding(.horizontal, 24)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        
                    }label: {
                        Label("", image: "mail")
                    }
                }
            }
        }
    }
}

struct SubscribeView_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeView(email: .constant("lilia.mdaghi@gmail.com"))
    }
}
