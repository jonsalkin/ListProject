//
//  EditFavoriteFoodListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/31/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct EditFavoriteFoodListView: View {
    @State private var foods = Food.fruitExamples()
    @State private var selelctedFoodsIds: Set<UUID> = []
    
    var body: some View {
        
        NavigationView {
            
            List(foods, selection: $selelctedFoodsIds) { food in
                FoodRow(food: food)
            }
            .navigationTitle("Foods")
            .toolbar {
                EditButton()
            }
            .safeAreaInset(edge: .bottom, spacing: 10) {
                if selelctedFoodsIds.count > 0 {
                    Button {
                        for id in selelctedFoodsIds {
                            if let index = foods.firstIndex(where: { $0.id == id}) {
                                foods[index].isFavorite = true
                            }
                        }
                    } label: {
                        Text("Mark as favorite")
                    }
                    .frame(height: 44)
                    .frame(maxWidth: .infinity)
                    .background(.background)
                }
            }
        }
    }
}

struct EditFavoriteFoodListView_Previews: PreviewProvider {
    static var previews: some View {
        EditFavoriteFoodListView()
    }
}
