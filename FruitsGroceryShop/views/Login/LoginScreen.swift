//
//  LoginScreen.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 28.11.2022.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""

    
    var body: some View {
        NavigationStack {
            VStack {
                Image("cherry_icon_filled")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.bottom, 60)
                
                TextField("Email", text: $email)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                    .underlineTextField()
                
                
                SecureField("Password", text: $password)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .textContentType(.password)
                    .underlineTextField()
                
                Text("Forgot password")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 10)
                    .padding(.bottom, 30)
                    .padding(.top, -10)
                
                
                
                Button {} label: {
                  Text("Login")
                        .font(.custom("Poppins-Bold", size: 18))
                        .foregroundColor(.white)
                        .padding(10)
                        
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .padding(5)
                .background(Color("MainColor"))
                .cornerRadius(40)
                
                
                Text("Or Continue With")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                
                HStack (alignment: .center) {
                    Image("google")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.horizontal, 5)
                    
                    Image("twitter")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.horizontal, 10)
                    
                    Image("facebook")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.horizontal, 5)
                }
                
                Text("Don't have an account? \(Text("Sign up.").foregroundColor(.green).font(.custom("Poppins-Bold", size: 15)))")
                    .foregroundColor(.gray)
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
