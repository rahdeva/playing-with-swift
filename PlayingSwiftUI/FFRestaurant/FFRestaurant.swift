//
//  FFRestaurant.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct FFRestaurant: View {
    var restaurants: [Restaurant] = [
        Restaurant(
            image: "example",
            title: "Title",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item 1", image: "example"),
                MenuItem(name: "Menu Item 2", image: "example"),
                MenuItem(name: "Menu Item 3", image: "example"),
                MenuItem(name: "Menu Item 4", image: "example"),
                MenuItem(name: "Menu Item 5", image: "example"),
                MenuItem(name: "Menu Item 6", image: "example"),
                MenuItem(name: "Menu Item 7", image: "example"),
                MenuItem(name: "Menu Item 8", image: "example"),
                MenuItem(name: "Menu Item 9", image: "example"),
                MenuItem(name: "Menu Item 10", image: "example"),
                MenuItem(name: "Menu Item 11", image: "example"),
                MenuItem(name: "Menu Item 12", image: "example"),
                MenuItem(name: "Menu Item 13", image: "example"),
                MenuItem(name: "Menu Item 14", image: "example"),
                MenuItem(name: "Menu Item 15", image: "example"),
                MenuItem(name: "Menu Item 16", image: "example"),
                MenuItem(name: "Menu Item 17", image: "example"),
                MenuItem(name: "Menu Item 18", image: "example"),
                MenuItem(name: "Menu Item 19", image: "example"),
                MenuItem(name: "Menu Item 20", image: "example"),
                MenuItem(name: "Menu Item 21", image: "example"),
                MenuItem(name: "Menu Item 22", image: "example"),
                MenuItem(name: "Menu Item 23", image: "example"),
                MenuItem(name: "Menu Item 24", image: "example"),
            ]
        ),
        Restaurant(
            image: "example",
            title: "Title2",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item A", image: "example"),
                MenuItem(name: "Menu Item B", image: "example"),
                MenuItem(name: "Menu Item C", image: "example")
            ]
        ),
        Restaurant(
            image: "example",
            title: "Title3",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item X", image: "example"),
                MenuItem(name: "Menu Item Y", image: "example"),
                MenuItem(name: "Menu Item Z", image: "example")
            ]
        ),
        Restaurant(
            image: "example",
            title: "Title4",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item Alpha", image: "example"),
                MenuItem(name: "Menu Item Beta", image: "example"),
                MenuItem(name: "Menu Item Gamma", image: "example")
            ]
        ),
        Restaurant(
            image: "example",
            title: "Title5",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item One", image: "example"),
                MenuItem(name: "Menu Item Two", image: "example"),
                MenuItem(name: "Menu Item Three", image: "example")
            ]
        ),
        Restaurant(
            image: "example",
            title: "Title6",
            subtitle: "Subtitle",
            menu: [
                MenuItem(name: "Menu Item Apple", image: "example"),
                MenuItem(name: "Menu Item Orange", image: "example"),
                MenuItem(name: "Menu Item Banana", image: "example")
            ]
        )
    ]
    
    var body: some View {
        NavigationView {
            List(restaurants, id: \.self) { item in
                NavigationLink(
                    destination: RestaurantDetailView(restaurant: item)
                ) {
                    RestaurantListView(restaurant: item)
                }
            }
            .navigationTitle("Restaurants")
        }
    }
}

#Preview {
    FFRestaurant()
}
