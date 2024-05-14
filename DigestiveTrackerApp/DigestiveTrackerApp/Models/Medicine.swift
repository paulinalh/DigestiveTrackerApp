//
//  Medicine.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Medicine {
    let id = UUID()
    var name: String
    var amount : Double
    var measurementType: String
    
    init(name: String, amount: Double, measurementType: String) {
        self.name = name
        self.amount = amount
        self.measurementType = measurementType
    }
}
