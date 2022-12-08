//
//  WelcomeView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 26.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var goToLogin: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color(.white)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("welcome_screen_img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .background(Circle().fill(Color.mainGreenColor))
                    
                    VStack(alignment: .center, spacing: 10) {
                        Text("Welcome to our Fruits App")
                            .font(.custom("Poppins-Medium", size: 25))
                            .foregroundColor(Color.mainTextColor)
                            
                        
                        Text("Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.")
                            .font(.custom("Poppins-Regular", size: 18))
                            .foregroundColor(Color.mainTextColor)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    .padding()
                    
                    
                    NavigationLink(destination: LoginScreen(), isActive: $goToLogin) { EmptyView() }
                    
                    Button(action: {
                        self.goToLogin = true
                    } ) {
                      Text("Get Start")
                            .font(.custom("Poppins-Bold", size: 18))
                            .foregroundColor(.white)
                            .padding(10)
                            
                    }
                
                    .frame(width: 300)
                    .padding(5)
                    .background(Color.mainGreenColor)
                    .cornerRadius(40)
                    
                    
                        
                }
                
             
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
       
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
