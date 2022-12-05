//
//  RecipeFactsView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipeFactsView: View {
    
    var fact: Fact
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 5)
                .frame(width: 300, height: 135, alignment: .center)
                .font(.footnote)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .lineSpacing(4)
                .foregroundColor(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
    }
}

struct RecipeFactsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFactsView(fact: factsData[2])
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
