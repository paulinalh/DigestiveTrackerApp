//
//  Stool.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Stool{
    let id = UUID()
    var type: Int
    
    
    init(type: Int) {
        self.type = type
    }
}
