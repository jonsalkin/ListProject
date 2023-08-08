//
//  Food.swift
//  ListProject
//
//  Created by Jon Salkin on 7/28/23.
//

import Foundation
import SwiftUI

struct Food: Identifiable, Hashable {
    var name: String
    var icon: String
    var isFavorite: Bool
    var color: Color
    let id = UUID()
    
    // Alternative approach:
//    let key = UUID()
    // if data from a server does not have an 'id' then
    // we can create an id that returns the 'key' above into the id.
    // Since id is required for Identifiable and Hashable.
    // but we will use 'id' instead.
//
//    var id: UUID {
//        return key
//    }
    
    static func fruitExamples() -> [Food] {
        [Food(name: "Apple", icon: "🍎", isFavorite: true, color: .red),
         Food(name: "Banana", icon: "🍌", isFavorite: false, color: .orange),
         Food(name: "Cherry", icon: "🍒", isFavorite: false, color: .yellow),
        ]
    }
    
    static func sweetFoodExamples() -> [Food] {
        [Food(name: "Doughnut", icon: "🍩", isFavorite: true, color: .green),
         Food(name: "Ice Cream", icon: "🍨", isFavorite: false, color: .blue),
         Food(name: "Cupcake", icon: "🧁", isFavorite: false, color: .indigo),
        ]
    }
    
    static func fastFoodExamples() -> [Food] {
        [Food(name: "Pizza", icon: "🍕", isFavorite: true, color: .purple),
         Food(name: "Burger", icon: "🍔", isFavorite: false, color: .pink),
        ]
    }
    
}
