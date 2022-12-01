//
//  SignUpScreen.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 29.11.2022.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        NavigationView {
            VStack {
                Image("cherry_icon_filled")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.bottom, 60)
                
                TextField("Name", text: $name)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .keyboardType(.default)
                    .textContentType(.name)
                    .underlineTextField()
                
                TextField("Email Address", text: $email)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                    .underlineTextField()
                
                TextField("Phone Number", text: $phone)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
                    .underlineTextField()
                
                
                SecureField("Password", text: $password)
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color("TextDarkColor"))
                    .textContentType(.password)
                    .underlineTextField()
                
                Button {} label: {
                  Text("Sign up")
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
                
                Text("Already have an account? \(Text("Sign in.").foregroundColor(.green).font(.custom("Poppins-Bold", size: 15)))")
                    .foregroundColor(.gray)
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                
            }
            .padding()
            .background(Color.white)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                

               
                Image(systemName: "arrow.backward")
                    .tint(Color("TextDarkColor"))
                    .font(.system(size: 25))
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }

                
                
              
            }
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
