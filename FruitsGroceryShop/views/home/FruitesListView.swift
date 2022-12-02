//
//  CategoriesView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 01.12.2022.
//

import SwiftUI

struct FruitesListView: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    private var gridLayout = [
           GridItem(.flexible()),
           GridItem(.flexible())
       ]
    
    private var images = [
        "oranges_big",
        "papaya_big",
        "apples_big",
        "banana_big",
        "grapes_big",
        "pears_big",
        "oranges_big",
        "papaya_big",
        "apples_big"
    ]
    
    private var fruits = [
        "Oranges",
        "Papaya",
        "Apples",
        "Bananas",
        "Grapes",
        "Pears",
        "Oranges",
        "Papaya",
        "Apples",
    ]
    
    var body: some View {
        ZStack {
            
            Color("MainBackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchView()
                
                ScrollView (.vertical, showsIndicators: false) {
                    LazyVGrid(columns: gridLayout, spacing: 20) {
                        ForEach(1..<images.count) { index in
                            FruitListItemView(image: images[index], fruit: fruits[index])

                        }
                    }
                }
            }
            .padding(10)
            
        
        }
        .navigationBarTitle(Text("Fruits").font(.custom("Poppins-Bold", size: 18)))
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
            
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        FruitesListView()
    }
}

struct FruitListItemView: View {
    
    @State var image = ""
    @State var fruit = ""
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .padding(.top, 10)
            
            Spacer()
            
            HStack {
                VStack (alignment: .leading) {
                    Text(fruit)
                        .font(.custom("Poppins-Medium", size: 17))
                        .foregroundColor(Color.white)
                    
                    Text("1 kg")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color.white)
                    
                    Text("\(Int.random(in: 5..<10)) C$")
                        .font(.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .foregroundColor(Color.mainGreenColor)
                        .padding(.all, 8)
                })
                .frame(width: 35, height: 35)
                .background(Color.white)
                .cornerRadius(10)
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 15)
        }
        .frame(maxWidth: .infinity, minHeight: 200)
        .padding(.top, 10)
        .padding(.horizontal, 10)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.mainGreenColor))
        .padding(.horizontal, 10)
    }
}
