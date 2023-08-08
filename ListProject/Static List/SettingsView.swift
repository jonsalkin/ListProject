//
//  SettingsView.swift
//  ListProject
//
//  Created by Jon Salkin on 7/27/23.
//

import SwiftUI

@available(iOS 16.0, *)

enum AppearanceStyle {
    case dark
    case light
    case auto
}

struct SettingsView: View {
    
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var profileImageSize = false
    @State var fontSize: CGFloat = 5
    @State var appearanceStyle: AppearanceStyle = .auto
    
    var body: some View {
        List {
            
            Section {
                TextField("Username", text: $username)
                Toggle("Private Account", isOn: $isPrivate)
                
                Button {
                    
                } label: {
                    Text("Sign out")
                }
            } header: {
                Text("Profile")
            }
            
            Section {
                Slider(value: $fontSize, in: 1...10) {
                    Label("Default Font Size", systemImage: "text.magnifying glass")
                }
                
                Picker("Appearance", selection: $appearanceStyle) {
                    Text("Dark").tag(AppearanceStyle.dark)
                    Text("Light").tag(AppearanceStyle.light)
                    Text("Auto").tag(AppearanceStyle.auto)
                }
            } header: {
                Text("Appearance")
            }
            
            Section {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("2.2.1")
                }
            } header: {
                Text("ABOUT")
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
