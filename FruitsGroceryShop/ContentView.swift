//
//  ContentView.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 26.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandingView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
    }
}
