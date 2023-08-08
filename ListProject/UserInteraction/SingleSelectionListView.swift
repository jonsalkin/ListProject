//
//  SingleSelectionListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/31/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct SingleSelectionListView: View {
    
    @State private var healthyFoods = Food.fruitExamples()
    @State private var selelctedFoodId: UUID? = nil
    
    var body: some View {
        List(healthyFoods, selection: $selelctedFoodId) { food in
            FoodRow(food: food)
                .listRowBackground(selelctedFoodId == food.id ? Color.green : Color(.tertiarySystemBackground))
        }
    }
}

struct SingleSelectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelectionListView()
    }
}
