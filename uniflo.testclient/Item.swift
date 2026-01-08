//
//  Item.swift
//  uniflo.testclient
//
//  Created by Naresh Chandra on 1/7/26.
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
