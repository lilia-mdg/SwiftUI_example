//
//  FoodItem.swift
//  SwiftUI_example
//
//  Created by Daydou on 20/2/2024.
//

import Foundation

struct FoodItem: Identifiable{
    let imageName: String
    let title: String
    let id = UUID()
    
    static func examples() -> [FoodItem] {
        [FoodItem(imageName: "image1", title: "Quickly"), FoodItem(imageName: "image2", title: "Breakfast"), FoodItem(imageName: "image3", title: "Celebratory"), FoodItem(imageName: "image4", title: "Dinner"), FoodItem(imageName: "image5", title: "Celebratory"), FoodItem(imageName: "image6", title: "Dinner")]
    }
}
