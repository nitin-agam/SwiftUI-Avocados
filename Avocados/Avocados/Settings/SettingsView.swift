//
//  SettingsView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 04/12/22.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            
            // header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 8)
                
                Text("Avocados".uppercased())
                    .modifier(RecipeSectionTitleModifier())
            }
            .padding()
            
            Form {
                // Section 1
                Section(content: {
                    Toggle(isOn: self.$enableNotification) {
                        Text("Enable Notifications")
                    }
                    
                    Toggle(isOn: self.$backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }, header: {
                    Text("General Settings")
                })
                
                
                // Section 2
                Section(content: {
                  if enableNotification {
                    HStack {
                      Text("Product").foregroundColor(Color.gray)
                      Spacer()
                      Text("Avocado Recipes")
                    }
                    HStack {
                      Text("Compatibility").foregroundColor(Color.gray)
                      Spacer()
                      Text("iPhone & iPad")
                    }
                    HStack {
                      Text("Developer").foregroundColor(Color.gray)
                      Spacer()
                      Text("Nitin Aggarwal")
                    }
                    HStack {
                      Text("Designer").foregroundColor(Color.gray)
                      Spacer()
                      Text("Robert Petras")
                    }
                    HStack {
                      Text("Linkedin Profile").foregroundColor(Color.gray)
                      Spacer()
                      Text("/in/nitinagam")
                    }
                    HStack {
                      Text("Version").foregroundColor(Color.gray)
                      Spacer()
                      Text("1.0.0")
                    }
                  } else {
                    HStack {
                      Text("Message").foregroundColor(Color.gray)
                      Spacer()
                      Text("Happy Coding 👍")
                    }
                  }
                }, header: {
                    Text("Application")
                })
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
