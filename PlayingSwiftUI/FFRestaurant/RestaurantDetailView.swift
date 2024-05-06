//
//  RestaurantDetailView.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State private var showingInfoSheet = false
    
    var body: some View {
        ScrollView {
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
                
                Button(action: {
                    showingInfoSheet = true
                }){
                    Text("Info")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .sheet(isPresented: $showingInfoSheet){
                    ScrollView(){
                        VStack {
                            Image(restaurant.image)
                                .resizable()
                                .frame(width: .infinity)
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
                        }
                    }
                }
            }
            .padding()
            
            LazyVGrid(columns: columns){
                ForEach(restaurant.menu, id: \.self) { menuItem in
                    VStack {
                        Image(menuItem.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Text(menuItem.name)
                            .padding()
                    }
                }
            }
        }
        .navigationTitle(restaurant.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    return RestaurantDetailView(
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
