//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // card image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 12) {
                // title
                HStack {
                    Text(recipe.title)
                        .font(.system(.title2, design: .serif, weight: .bold))
                        .foregroundColor(Color("ColorGreenMedium"))
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Image(systemName: "bookmark")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .imageScale(.small)
                        .foregroundColor(.yellow)
                }
                
                // headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // ratings
                RecipeRatingView(rating: recipe.rating)
                
                // cooking
                RecipeCookingInfoView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal.toggle()
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[2])
            .previewLayout(.sizeThatFits)
    }
}
