//
//  RecipesHeaderView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipesHeaderView: View {
    
    private var idiom: UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    var recipesHeader: RecipesHeader
    @State private var showHeadline = true // make it false to enable animation
    
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
            
            VStack(alignment: .leading, spacing: 0) {
                
                Spacer()
                
                HStack(alignment: .center, spacing: 0) {
                    
                    Spacer()
                        .frame(width: 60)
                    
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
                                .font(.body)
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                                .shadow(radius: 3)
                                .foregroundColor(.white)
                        }
                        .frame(width: 281, height: 105)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 0)
                        .background(Color("ColorBlackTransparentLight"))
                    }
                    .frame(width: 285, height: 105, alignment: .center)
                   // .offset(x: -10, y: showHeadline ? 50 : 220)
                    .animation(slideInAnimation, value: UUID())
                    .onAppear(perform: {
                        // disabling slide-in animation
                       // self.showHeadline.toggle()
                    })
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: self.idiom == .pad ? 130 : 50)
            }
        }
        .frame(height: idiom == .pad ? 420 : 320, alignment: .center)
    }
}

struct RecipesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesHeaderView(recipesHeader: recipesHeaders[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
        
    }
}
