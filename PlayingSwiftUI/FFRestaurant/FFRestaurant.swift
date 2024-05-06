//
//  FFRestaurant.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct FFRestaurant: View {
    var body: some View {
        HStack {
            Image("example")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .shadow(radius: 8)
                .padding()
            VStack (alignment: .leading){
                Text("Title")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Subtitle")
                    .font(.subheadline)
                    .opacity(0.6)
            }
            Spacer()
        }
        .background(.blue)
    }
}

#Preview {
    FFRestaurant()
}
