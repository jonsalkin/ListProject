//
//  CrazyStylingListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/31/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct CrazyStylingListView: View {
    @State private var foods = Food.fruitExamples()
    @State private var sweets = Food.sweetFoodExamples()
    @State private var unhealthyFoods = Food.fastFoodExamples()
    
    @State private var sectionIsExpanded: Bool = true
    
    var body: some View {
        List {
            Section {
                ForEach(foods) { food in
                    FoodRow(food: food)
                        .listRowBackground(food.color)
                }
                .listRowSeparatorTint(.white)
            } header: {
                Text("Fruits")
            }
            .headerProminence(.increased)
            .foregroundColor(.white)
            
            Section {
                ForEach(sweets) { food in
                    FoodRow(food: food)
//                        .listRowBackground(food.isFavorite ? Color.indigo : Color.green)
                }
                .foregroundColor(.indigo)
                .listRowBackground(
                    Capsule()
                        .fill(Color(white: 1, opacity: 0.8))
                        .padding(.vertical, 2)
                        .padding(.horizontal, 20)
                )
                .listRowSeparator(.hidden)
            } header: {
                Text("Desserts")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
            .headerProminence(.increased)
//            .foregroundColor(.white)
            .listRowInsets(.init(top: 0, leading: 40, bottom: 0, trailing: 40))
            
            
            Section {
                ForEach(unhealthyFoods) { food in
                    HStack {
                        FoodRow(food: food)
                    }
                }
                .foregroundColor(.pink)
                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 60))
                .listRowSeparatorTint(.orange)
            } header: {
                Text("Fast Food")
                    .foregroundColor(.black)
            } footer: {
                Text("You should try to avoid these foods and eat them only occasionally.")
                    .foregroundColor(.white)
            }
            .listRowBackground(Color.black)
            .listSectionSeparatorTint(.yellow)
            .headerProminence(.increased)
            
            Section(header: Text("Action")) {
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
//        .listStyle(.inset)
//        .background(Color.mint)
        .scrollContentBackground(.hidden)
        .background {
            Image("pizza")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 4)
                .overlay(Color.red.opacity(0.2))
        }
        .environment(\.defaultMinListRowHeight, 50)
        .environment(\.defaultMinListHeaderHeight, 45)
    }
}

struct CrazyStylingListView_Previews: PreviewProvider {
    static var previews: some View {
        CrazyStylingListView()
            .previewDisplayName("Custom Styling")
        
        CrazyStylingListView()
            .listStyle(.inset)
            .previewDisplayName("Custom Styling - inset")
    }
}
