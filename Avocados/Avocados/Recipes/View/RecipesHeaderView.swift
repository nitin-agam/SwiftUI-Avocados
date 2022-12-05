//
//  RecipesHeaderView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipesHeaderView: View {
    
    var recipesHeader: RecipesHeader
    @State private var showHeadline = false
    
    private var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            
            Image(recipesHeader.image)
                .resizable()
                .scaledToFill()
            
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(recipesHeader.headline)
                        .font(.title)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(recipesHeader.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 3)
                        .foregroundColor(.white)
                }
                .frame(width: 281, height: 105)
                .padding(.horizontal, 20)
                .padding(.vertical, 0)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -20, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation, value: UUID())
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct RecipesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesHeaderView(recipesHeader: recipesHeaders[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
        
    }
}
