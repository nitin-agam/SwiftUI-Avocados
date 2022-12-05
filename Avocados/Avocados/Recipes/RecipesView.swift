//
//  RecipesView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 04/12/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(recipesHeaders) { item in
                            RecipesHeaderView(recipesHeader: item)
                        }
                    }
                }
                
                
                // dishes
                Text("Avocado Dishes")
                    .modifier(RecipeSectionTitleModifier())
                
                RecipeDishesView()
                    .frame(maxWidth: 640)
                
                
                // facts
                Text("Avocado Facts")
                    .modifier(RecipeSectionTitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(factsData) { item in
                            RecipeFactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                
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
                
                
                // footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(RecipeSectionTitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.body)
                        .fontDesign(.serif)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
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
