//
//  Meal.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Meal {
    let id = UUID()
    var dishes: [Dish]
    
    
    init(dishes: [Dish]) {
        self.dishes = dishes
    }
}
