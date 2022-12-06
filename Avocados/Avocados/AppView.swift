//
//  AppView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 04/12/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Label("Avocados", image: "tabicon-branch")
                }
            
            RecipesView()
                .tabItem {
                    Label("Recipes", image: "tabicon-book")
                }
            
            RipeningView()
                .tabItem {
                    Label("Ripening", image: "tabicon-avocado")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", image: "tabicon-settings")
                }
        }
        .tint(Color("ColorGreenAdaptive"))
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.white.opacity(0.1))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
