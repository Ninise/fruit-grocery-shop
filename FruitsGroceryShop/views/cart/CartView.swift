//
//  CartView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 02.12.2022.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    private var images = [
        "oranges_big",
        "papaya_big",
        "apples_big",
        "banana_big",
        "grapes_big",
        "pears_big"
    ]
    
    private var fruits = [
        "Oranges",
        "Papaya",
        "Apples",
        "Bananas",
        "Grapes",
        "Pears"
    ]
    
    var body: some View {
        ZStack {
            
            Color("MainBackgroundColor")
                .edgesIgnoringSafeArea(.all)
                
            VStack (alignment: .leading) {
                
                Text("Total 5")
                    .font(.custom("Poppins-Medium", size: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                ScrollView (.vertical, showsIndicators: false) {
                    ForEach(0..<5) { index in
                        CartItemView(image: images[index], title: fruits[index])
                    }
                }
                
                BottomSumView()
                
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
            .padding(20)
         
        
        }
        .navigationBarTitle(Text("Cart").font(.custom("Poppins-Bold", size: 18)))
        .background(Color.mainBackgroundColor)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                   
                Image(systemName: "arrow.backward")
                    .tint(Color.mainTextColor)
                    .font(.system(size: 25))
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
            }
            
        }    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

struct CartItemView: View {
    
    @State var image = ""
    @State var title = ""
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, alignment: .center)
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.custom("Poppins-Bold", size: 16))
                    .foregroundColor(.mainTextColor)
                
                
                Text("C$ \(Int.random(in: 5..<10)) per KG")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.mainTextColor)
                
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
            
        }
        .frame(maxWidth: .infinity, minHeight: 140)
        .padding(.top, 10)
        .padding(.horizontal, 50)
        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
        .padding(.horizontal, 10)
    }
}

struct BottomSumView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 10) {
                Text("Order")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
                
                Text("Delivery")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
                
                Text("Grand Total")
                    .font(.custom("Poppins-Bold", size: 16))
                    .foregroundColor(.mainTextColor)
                
            }
            
            Spacer()
            
            VStack (alignment: .trailing, spacing: 10) {
                Text("51 C$")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
                
                Text("4.2 C$")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
                
                Text("55.2 C$")
                    .font(.custom("Poppins-Bold", size: 16))
                    .foregroundColor(.mainTextColor)
                
            }
        }
    }
}
