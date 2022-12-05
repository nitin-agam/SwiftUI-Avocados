//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // card image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title)
                                .fontWeight(.light)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                }
            
            VStack(alignment: .leading, spacing: 12) {
                // title
                Text(recipe.title)
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // ratings
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1..<(recipe.rating), id: \.self) {_ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }
                
                // cooking
                
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 6) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    
                    HStack(alignment: .center, spacing: 6) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    
                    HStack(alignment: .center, spacing: 6) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[2])
            .previewLayout(.sizeThatFits)
    }
}
