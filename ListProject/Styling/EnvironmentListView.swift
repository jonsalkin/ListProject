//
//  EnvironmentListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/31/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct EnvironmentListView: View {
    var body: some View {
        NavigationView {
            
            ListStylingView()
                .navigationTitle("First")
            ListStylingView()
                .navigationTitle("Second")
        }
    }
}

struct EnvironmentListView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentListView()
    }
}
