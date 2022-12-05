//
//  DetailsView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 05.12.2022.
//

import SwiftUI

struct DetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            
            Color("MainBackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
        
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

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
