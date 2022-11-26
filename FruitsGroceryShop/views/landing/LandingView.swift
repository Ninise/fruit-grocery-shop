//
//  LandingView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 26.11.2022.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            Color("MainColor")
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image("cherry_icon")
                    .resizable()
                    .frame(width: 100, height: 100)
                    
                
                Text("Fruit App")
                    .font(.custom("Poppins-Bold", size: 24))
                    .foregroundColor(.white)
            }
            
        
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
