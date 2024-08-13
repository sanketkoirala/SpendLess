//
//  Item.swift
//  SpendLess
//
//  Created by Sanket Koirala on 8/13/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
