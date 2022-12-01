//
//  HomeScreen.swift
//  FruitsGroceryShop
//
//  Created by Nikita on 30.11.2022.
//

import SwiftUI

struct HomeScreen: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                
                ScrollView (.vertical, showsIndicators: false) {
                    AppBarView()
                    SearchView()
                    SpecialOfferView()
                    CategoriesView()
                    BigOffersView()
                    RecentlyAddedView()
                }
            }
            .padding(.all, 10)
            .background(Color.mainBackgroundColor)
        }
       
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct AppBarView: View {
    
    var body: some View {
        HStack {
            
            VStack (alignment: .leading) {
                Text("Hello Nikita")
                    .font(.custom("Poppins-Bold", size: 18))
                    .foregroundColor(Color.mainTextColor)
                
                Text("Would you like to order some farmer's fruits?")
                    .font(.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color.mainTextColor)
                    .padding(.top, 0.5)
                
            }
            
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

struct SearchView: View {
    @State private var search = ""

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.leading, 30)
            
            
            TextField("Search", text: $search)
                .font(.custom("Poppins-Regular", size: 18))
                .foregroundColor(.mainTextColor)
                .keyboardType(.default)
                .textContentType(.name)
                .padding(10)
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
        .padding(10)
        
    }
}

struct SpecialOfferView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            HStack (alignment: .top)  {
                VStack (alignment: .leading) {
                    Text("Up to 50% offers!")
                        .font(.custom("Poppins-Bold", size: 24))
                        .foregroundColor(Color.white)
                    
                    Text("Enjoy Our Big Offers \nOf Every day")
                        .font(.custom("Poppins-Regular", size: 24))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                }
                
                Spacer()
            }
            
            Image("pile_of_fruits")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .padding(.trailing, -25)
                .padding(.bottom, 10)
            
        }
        .frame(maxWidth: .infinity, minHeight: 200)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.mainGreenColor))
        .padding(.horizontal, 10)
    }
}

struct FruitItemView: View {
    
    @State var image = ""
    @State var text = ""
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .padding(20)
                .background(Color.init(hex: "#E5EFEB"))
                .clipShape(Circle())
            
            Text(text)
                .font(.custom("Poppins-Regular", size: 13))
                .foregroundColor(Color.mainTextColor)
        }
    }
}

struct CategoriesView: View {
    
    @State var goToFruitsList: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Categories")
                        .font(.custom("Poppins-Bold", size: 18))
                        .foregroundColor(Color("TextDarkColor"))
                    
                    
                    Spacer()
                    
                    
                    NavigationLink(
                        "", destination: FruitesListView(),
                                           isActive: $goToFruitsList)
                    
                    Text("Show All")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color.mainGreenColor)
                        .onTapGesture {
                            goToFruitsList = true
                        }
                    
                }
                
            }
            .padding(.horizontal, 10)
            .padding(.top, 15)
            
            
            HStack (alignment: .center, spacing: 40) {
                FruitItemView(image: "strawberry", text: "Strawberry")
                FruitItemView(image: "mango", text: "Mango")
                FruitItemView(image: "banana", text: "Banana")
                FruitItemView(image: "orange", text: "Orange")
            }
        }
    }
}

struct BigOfferItemView: View {
    
    @State var image = ""
    @State var text = ""
    @State var color: Color = .mainGreenColor
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            VStack (alignment: .leading) {
                Text(text)
                    .font(.custom("Poppins-Medium", size: 17))
                    .foregroundColor(Color.white)
                
                Spacer()
            }
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .padding(.bottom, 10)
            
            
        }
        .frame(width: 135, height: 100)
        .padding(.top, 10)
        .padding(.horizontal, 10)
        .background(RoundedRectangle(cornerRadius: 10).fill(color))
        .padding(.horizontal, 10)
    }
}

struct BigOffersView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Big Offers")
                        .font(.custom("Poppins-Bold", size: 18))
                        .foregroundColor(Color("TextDarkColor"))
                    
                    
                    Spacer()
                    
                    Text("Show offers")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color.mainGreenColor)
                    
                }
                
            }
            .padding(.horizontal, 10)
            .padding(.top, 15)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    BigOfferItemView(image: "oranges_big", text: "Fresh oranges \n50% Off", color: Color.init(hex: "#FE6444"))
                    BigOfferItemView(image: "papaya_big", text: "Fresh papaya \n20% Off", color: Color.init(hex: "#41B8A2"))
                    BigOfferItemView(image: "apples_big", text: "Fresh apples \n20% Off")
                }
                
            }
        }
        .padding(.top, 20)
    }
}

struct RecentlyAddedView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Recently Added")
                        .font(.custom("Poppins-Bold", size: 18))
                        .foregroundColor(Color("TextDarkColor"))
                    
                    
                    Spacer()
                    
                    Text("Show All")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color.mainGreenColor)
                    
                }
                
            }
            .padding(.horizontal, 10)
            .padding(.top, 15)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    BigOfferItemView(image: "apples_big", text: "Awesome apples from locals")
                    BigOfferItemView(image: "oranges_big", text: "New oranges Egypt", color: Color.init(hex: "#FE6444"))
                    BigOfferItemView(image: "papaya_big", text: "Freshly arrived papaya", color: Color.init(hex: "#41B8A2"))
                    
                }
                
            }
        }
        .padding(.top, 20)
    }
}
