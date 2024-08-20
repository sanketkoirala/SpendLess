//
//  TintColor.swift
//  SpendLess
//
//  Created by Sanket Koirala on 8/19/24.
//

import SwiftUI

struct TintColor: Identifiable {
    let id: UUID = .init()
    var color: String
    var value: Color
}

var tints: [TintColor] = [
    .init(color: "Red", value: .red),
    .init(color: "Blue", value: .blue),
    .init(color: "Pink", value: .pink),
    .init(color: "Yellow", value: .yellow),
    .init(color: "Orange", value: .orange),
    .init(color: "Black", value: .black)
]
    

