//
//  Day11Dua.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import SwiftUI

struct Day11Dua: View {
    var body: some View {
        HStack{
            Image(systemName: "globe")
                .padding()
                .background(.blue)
            
            VStack (alignment: .leading){
                HStack {
                    Text("Title")
                    Spacer()
                    Text("2023-12-12")
                }
                Text("Description")
            }
            
            Spacer()
        }
        .padding()
        .background(.green)
    }
}

#Preview {
    Day11Dua()
}
