//
//  View+Extension.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 28.11.2022.
//

import Foundation
import SwiftUI


extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(Color("LightGrayColor"))
            .padding(10)
    }
}
