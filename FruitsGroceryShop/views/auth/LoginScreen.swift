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

    @State private var goToSignUp: Bool = false
    @State private var goToHome: Bool = false

    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color(hex: "#F5F5F5")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("cherry_icon_filled")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.bottom, 60)
                    
                    TextField("", text: $email)
                        .placeholder(when: email.isEmpty) {
                                Text("Email").foregroundColor(.gray)
                        }
                        .font(.custom("Poppins-Regular", size: 18))
                        .foregroundColor(Color.mainTextColor)
                        .keyboardType(.emailAddress)
                        .textContentType(.emailAddress)
                        .underlineTextField()
                    
                    
                    SecureField("", text: $password)
                        .placeholder(when: email.isEmpty) {
                                Text("Password").foregroundColor(.gray)
                        }
                        .font(.custom("Poppins-Regular", size: 18))
                        .foregroundColor(Color.mainTextColor)
                        .textContentType(.password)
                        .underlineTextField()
                    
                    Text("Forgot password")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 10)
                        .padding(.bottom, 30)
                        .padding(.top, -10)
                    
                    
                    
                    Button {
                        goToHome = true
                    } label: {
                      Text("Login")
                            .font(.custom("Poppins-Bold", size: 18))
                            .foregroundColor(.white)
                            .padding(10)
                            
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .padding(5)
                    .background(Color.mainGreenColor)
                    .cornerRadius(30)
                    
                    
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
                    
                    NavigationLink(destination: SignUpScreen(), isActive: $goToSignUp) { EmptyView() }
                    
                    NavigationLink(destination: HomeScreen(), isActive: $goToHome) { EmptyView() }
                    
                    Text("Don't have an account? \(Text("Sign up.").foregroundColor(.green).font(.custom("Poppins-Bold", size: 15)))")
                        .foregroundColor(.gray)
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(.gray)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                        .onTapGesture {
                            self.goToSignUp = true
                        }
                    
                    
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.goToSignUp = false
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
