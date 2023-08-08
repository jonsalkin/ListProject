//
//  FoodRowView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/30/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct FoodRow: View {
    
    let food: Food
    
    var body: some View {
        
        HStack {
            Text(food.icon)
            Text(food.name)
            Spacer()
            Image(systemName: food.isFavorite ? "heart.fill" : "heart")
        }
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: Food(name: "pizza", icon: "🍕", isFavorite: true, color: .purple))
            .padding()
    }
}
