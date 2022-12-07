//
//  RecipesView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 04/12/22.
//

import SwiftUI

struct RecipesView: View {
    
    private var idiom: UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                
                TabView {
                    ForEach(recipesHeaders) { item in
                        RecipesHeaderView(recipesHeader: item)
                    }
                }
                .frame(height: idiom == .pad ? 420 : 320)
                .tabViewStyle(.page)
                
                
                // dishes
                Text("Avocado Dishes")
                    .modifier(RecipeSectionTitleModifier())
                
                RecipeDishesView()
                    .frame(maxWidth: 640)
                    .padding(.bottom, 20)
                
                
                // facts
                Text("Avocado Facts")
                    .modifier(RecipeSectionTitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(factsData) { item in
                            RecipeFactsView(fact: item)
                        }
                    }
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
                
                
                // recipes
                Text("Avocado Recipes")
                    .modifier(RecipeSectionTitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipesData) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                .padding(.bottom, 20)
                
                
                // footer
                VStack(alignment: .center, spacing: 0) {
                    Text("All About Avocados")
                        .modifier(RecipeSectionTitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.body)
                        .fontDesign(.serif)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(minHeight: 60)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                }
                .frame(maxWidth: 640)
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct RecipeSectionTitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.bold)
            .fontDesign(.serif)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
