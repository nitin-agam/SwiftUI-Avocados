//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                Group {
                    
                    // title
                    Text(recipe.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    // rating
                    RecipeRatingView(rating: recipe.rating)
                    
                    // cooking
                    RecipeCookingInfoView(recipe: recipe)
                    
                    // ingredients
                    Text("Ingredients")
                        .modifier(RecipeSectionTitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 8) {
                                Text("👉  " + item)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    // instructions
                    Text("Instructions")
                        .modifier(RecipeSectionTitleModifier())
                    
                    VStack(alignment: .center, spacing: 5) {
                        ForEach(recipe.instructions, id: \.self) { item in
                            VStack(alignment: .center, spacing: 8) {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .imageScale(.large)
                                    .font(Font.title.weight(.ultraLight))
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                    .padding(.bottom, 8)
                                
                                Text(item)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                    .font(.system(.body, design: .serif))
                                    .padding(.bottom, 30)
                                    .lineSpacing(8)
                            }
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                          .font(.title)
                          .foregroundColor(Color.white)
                          .shadow(radius: 6)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 12)
                    Spacer()
                }
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[3])
    }
}
