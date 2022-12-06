//
//  SplashView.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 06/12/22.
//

import SwiftUI

struct SplashView: View {
    
    @State private var shouldDismiss = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250, alignment: .center)
                
                VStack {
                    Text("Avocado".uppercased())
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
            .background(
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.dismissSplash()
            })
            .navigationDestination(isPresented: $shouldDismiss) {
                AppView()
            }
        }
    }
    
    func dismissSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.shouldDismiss = true
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
