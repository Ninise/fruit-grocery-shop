//
//  DetailsView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 05.12.2022.
//

import SwiftUI

struct DetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var image = "oranges_big"
    @State var title = ""
    
    var body: some View {
        ZStack {
            
            Color("MainGreenColor")
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250)
                }
                .frame(height: 300)
                
                VStack {
                    HStack {
                        VStack (alignment: .leading) {
                            Text(title)
                                .font(.custom("Poppins-Bold", size: 16))
                                .foregroundColor(.mainTextColor)
                            
                            Spacer()
                            
                            Text("10 C$ per KG")
                                .font(.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            HStack (spacing: 15) {
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                
                                Text("1")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(.white)
                                
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                            }
                            .frame(width: 90, height: 25)
                            .padding(5)
                            .background(Color("MainColor"))
                            .cornerRadius(40)
                            
                        }
                        .padding(.vertical, 20)
                        
                        Spacer()
                        
                        VStack (alignment: .trailing, spacing: 8) {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 16, height: 16)
                            
                            Spacer()
                            
                            Text("10 C$")
                                .font(.custom("Poppins-Bold", size: 19))
                                .foregroundColor(.mainTextColor)
                                
                        }
                        .padding(.vertical, 30)
                    }
                    .frame(maxHeight: 150)
                    
                    VStack (alignment: .leading) {
                        Text(title)
                            .font(.custom("Poppins-Medium", size: 16))
                            .foregroundColor(.mainTextColor)
                            .padding(.top, 10)
                            .padding(.bottom, 3)
                        
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                            .font(.custom("Poppins-Medium", size: 15))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button {} label: {
                      Text("Check out")
                            .font(.custom("Poppins-Bold", size: 18))
                            .foregroundColor(.white)
                            .padding(10)
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .padding(5)
                    
                    .background(Color("MainColor"))
                    .cornerRadius(40)
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .background(Color.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.bottom)
                
                
                
            }
            
            
            
            
        
        }
        .navigationBarTitle(Text("Fruits").font(.custom("Poppins-Bold", size: 18)).foregroundColor(.white))
        .background(Color.mainGreenColor)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                   
                Image(systemName: "arrow.backward")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
            }
            
        }
    }    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
