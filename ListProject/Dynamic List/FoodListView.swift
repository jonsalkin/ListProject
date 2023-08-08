//
//  FoodListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/28/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct FoodListView: View {
    
    @State private var foods = Food.fruitExamples()
    
    var body: some View {
        NavigationView {
            List(foods) { food in
                HStack {
                    Text(food.icon)
                    Text(food.name)
                }
            }
            .toolbar {
                Button {
                    
                    let newFood = Food(name: "New", icon: "\(foods.count)", isFavorite: false, color: .cyan)
                    
                    withAnimation {
                        foods.append(newFood)
                    }
                    
                } label: {
                    Label("Add", systemImage: "plus")
                }
            }
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
