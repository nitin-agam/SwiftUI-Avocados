//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var rating: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 3) {
            ForEach(1..<(rating), id: \.self) {_ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(rating: 2)
    }
}
