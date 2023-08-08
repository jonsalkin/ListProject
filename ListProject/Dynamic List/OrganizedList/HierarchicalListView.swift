//
//  HierarchicalListView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/30/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct HierarchicalListView: View {
    
    @State private var fileItems = FileItem.preview()
    
    var body: some View {
        List(fileItems, children: \.children) { fileItem in
            if fileItem.isFolder {
                Label(fileItem.title, systemImage: "folder.fill")
            } else {
                Label(fileItem.title, systemImage: "envelope")
            }
        }
    }
}

struct HierarchicalListView_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalListView()
    }
}
