//
//  Residence.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Residence {
    let id = UUID()
    var country: String
    var city: String
    var initialDate: Date
    var finalDate : Date
    
    
    init(country: String, city: String, initialDate: Date, finalDate: Date) {
        self.country = country
        self.city = city
        self.initialDate = initialDate
        self.finalDate = finalDate
        
    }
}
