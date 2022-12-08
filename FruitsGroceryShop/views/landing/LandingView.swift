//
//  LandingView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 26.11.2022.
//

import SwiftUI

struct LandingView: View {
    
    @State private var isActive = false

    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "#04B761")
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    Image("cherry_icon")
                        .resizable()
                        .frame(width: 100, height: 100)
                        
                    
                    Text("Fruit App")
                        .font(.custom("Poppins-Bold", size: 24))
                        .foregroundColor(.white)
                }
                
                
                
                NavigationLink(destination: WelcomeView(),
                                               isActive: $isActive,
                                               label: {  })
            
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.isActive = true
                        }
            })
        }
        .background(Color.mainGreenColor)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
       
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
