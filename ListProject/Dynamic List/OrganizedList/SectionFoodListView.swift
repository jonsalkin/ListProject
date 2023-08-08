//
//  SectionFoodListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/30/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct SectionFoodListView: View {
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
                }
                .headerProminence(.increased)
                
                Section {
                    DisclosureGroup("Unhealthy Foods") {
                        ForEach(unhealthyFoods) { food in
                            HStack {
                                FoodRow(food: food)
                            }
                        }
                    }
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

struct SectionFoodListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionFoodListView()
    }
}
