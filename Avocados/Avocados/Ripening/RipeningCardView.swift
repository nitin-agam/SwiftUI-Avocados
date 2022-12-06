//
//  RipeningCardView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 06/12/22.
//

import SwiftUI

struct RipeningCardView: View {
    
    var ripening: Ripening
    @State private var slideInAnimation: Bool = false
    
    private var upAnimation: Animation {
        Animation.easeInOut(duration: 1.0)
    }
    
    var body: some View {
        VStack {
            
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(upAnimation, value: UUID())
                .offset(y: slideInAnimation ? 55 : -55)
            
            
            VStack(alignment: .center, spacing: 10) {
                
                // stage
                VStack {
                    Text(ripening.stage)
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.body)
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // title
                Text(ripening.title)
                    .font(.title)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                
                // description
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                
                Spacer()
                
                // ripeness
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.callout)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .frame(width: 180)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(radius: 6, x: 0, y: 6)
                    )
                    
                
                
                // instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.top)
        .onAppear {
            self.slideInAnimation = true
        }
    }
}

struct RipeningCardView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningCardView(ripening: ripeningData[0])
    }
}
