//
//  RecipeDishesView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeDishesView: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(RecipeIconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(RecipeIconModifier())
                    Spacer()
                    Text("Tacos")
                }
                
                Divider()
                
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(RecipeIconModifier())
                    Spacer()
                    Text("Salads")
                }
                
                Divider()
                
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(RecipeIconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            VStack(alignment: .center, spacing: 16) {
                
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(RecipeIconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(RecipeIconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(RecipeIconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(RecipeIconModifier())
                }
            }
        }
        .font(.callout)
        .fontDesign(.serif)
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 280)
    }
}

struct RecipeIconModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct RecipeDishesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
