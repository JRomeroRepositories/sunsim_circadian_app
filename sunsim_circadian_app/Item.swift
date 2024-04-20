//
//  Item.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-19.
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
