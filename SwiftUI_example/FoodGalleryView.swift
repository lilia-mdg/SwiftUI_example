//
//  FoodGalleryView.swift
//  SwiftUI_example
//
//  Created by Daydou on 20/2/2024.
//

import SwiftUI

struct FoodGalleryView: View {
    @State private var text: String = ""
    let items = FoodItem.examples()
    var rows: [GridItem] = Array(repeating: .init(.flexible(minimum: 100, maximum: 300)), count: 2)
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Text("What to eat?")
                .boldBodyStyle()
            //            Spacer()
            ZStack(alignment: .trailing) {
                TextField("Search eat", text: $text)
                    .textFieldStyle(RedTextFieldStyle())
                Button{
                    
                }label: {
                    Image(systemName: "magnifyingglass")
                }.buttonStyle(IconButtonStyle())
            }.padding(.vertical, 40)
            
            LazyVGrid(columns: rows, alignment: .leading,spacing: 24) {
                ForEach(items) { item in
                    CardView(item: item)
                }
            }
            
        }.padding(24)
    }
}

struct FoodGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodGalleryView()
    }
}

struct CardView: View {
    var item: FoodItem
    var body: some View {
        VStack(spacing: 16) {
            Image(item.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .clipped()
                .cornerRadius(24)
            Text(item.title)
                .bodyStyle()
        }
    }
}
