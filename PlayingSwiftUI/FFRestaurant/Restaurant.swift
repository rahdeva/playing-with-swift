//
//  Restaurant.swift
//  PlayingSwiftUI
//
//  Created by MacBook Air on 06/05/24.
//

import Foundation

struct Restaurant: Hashable {
    var image : String
    var title : String
    var subtitle : String
    var menu : [MenuItem]
}

struct MenuItem: Hashable {
    var name : String
    var image: String
}
