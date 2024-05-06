//
//  Day11.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct Day11: View {
    var body: some View {
        VStack {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.green)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.red)
            }
            Spacer()
            HStack {
                Image(systemName: "globe")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            Spacer()
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.yellow)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.purple)
            }
        }
        .background(.blue)
    }
}

#Preview {
    Day11()
}
