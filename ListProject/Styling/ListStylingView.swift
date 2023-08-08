//
//  ListStylingView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/30/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct ListStylingView: View {
    @State private var foods = Food.fruitExamples()
    @State private var unhealthyFoods = [
        Food(name: "Pizza", icon: "🍕", isFavorite: true, color: .purple),
        Food(name: "Burger", icon: "🍔", isFavorite: false, color: .pink),
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    ForEach(foods) { food in
                        HStack {
                            FoodRow(food: food)
                        }
                    }
                } header: {
                    Text("Healthy Foods")
                } footer: {
                    Text("Try to eat these regularly.")
                }
                
                Section {
                        ForEach(unhealthyFoods) { food in
                            HStack {
                                FoodRow(food: food)
                            }
                        }
                } header: {
                    Text("Unhealthy Foods")
                } footer: {
                    Text("You should try to avoid these foods and eat them only occasionally.")
                }
                
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

struct ListStylingView_Previews: PreviewProvider {
    static var previews: some View {
        ListStylingView()
            .listStyle(.insetGrouped)
            .previewDisplayName("insetGrouped")
        
        ListStylingView()
            .listStyle(.plain)
            .previewDisplayName("plain")
        
        ListStylingView()
            .listStyle(.inset)
            .previewDisplayName("inset")
        
        ListStylingView()
            .listStyle(.grouped)
            .previewDisplayName("grouped")
        
        ListStylingView()
            .listStyle(.sidebar)
            .previewDisplayName("sidebar")
    }
}
