//
//  Day11Tiga.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct Day11Tiga: View {
    var body: some View {
        VStack {
            ListGray(
                title: "Name:",
                subtitle: "Deva"
            )
            
            HStack {
                Image(systemName: "globe")
                Text("Occupation:")
                    .font(.title3)
                Spacer()
                Text("Programmer")
                    .font(.title3)
            }
            .padding()
            .background(.white)
            
            ListGray(
                title: "Work:",
                subtitle: "Apple Academy"
            )
        }
    }
}

#Preview {
    Day11Tiga()
}

struct ListGray: View {
    let title : String
    let subtitle : String
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
            Text(title)
                .font(.subheadline)
            Spacer()
            Text(subtitle)
                .font(.subheadline)
        }
        .padding()
        .background(.gray)
        .foregroundColor(.white)
    }
}
