//
//  Dish.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Dish {
    let id = UUID()
    var name : String
    var ingredients: [Ingredient]
    var amount : Double
    var isFavourite : Bool
    var type : String
    
    
    init(name: String, ingredients: [Ingredient], amount : Double, isFavourite: Bool, type: String) {
        self.name = name
        self.ingredients = ingredients
        self.amount = amount
        self.isFavourite = isFavourite
        self.type = type
    }
}
