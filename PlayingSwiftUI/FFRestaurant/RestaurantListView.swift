//
//  RestaurantListView.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct RestaurantListView: View {
    let restaurant : Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .shadow(radius: 8)
                .padding(.vertical, 8)
                .padding(.trailing, 8)
            
            VStack (alignment: .leading){
                Text(restaurant.title)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(restaurant.subtitle)
                    .font(.subheadline)
                    .opacity(0.6)
            }
            
            Spacer()
        }
        .background(.white)
    }
}

#Preview {
    return RestaurantListView(
        restaurant: Restaurant(
            image: "example",
            title: "Title",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item 1", image: "example"),
                MenuItem(name: "Menu Item 2", image: "example"),
                MenuItem(name: "Menu Item 3", image: "example")
            ]
        )
    )
}
