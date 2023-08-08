//
//  MultipleSelectionListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/31/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct MultipleSelectionListView: View {
    @State private var healthyFoods = Food.fruitExamples()
    @State private var selelctedFoodsIds: Set<UUID> = []
    
    var body: some View {
        
        NavigationView {
            
            List(healthyFoods, selection: $selelctedFoodsIds) { food in
                FoodRow(food: food)
            }
            .toolbar {
                EditButton()
            }
        }
    }
}

struct MultipleSelectionListView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSelectionListView()
    }
}
