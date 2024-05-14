//
//  User.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class User {
    let id = UUID()
    var name: String
    var dateBirth: Date
    var gender: String
    var residences : [Residence]
    var illnesses : [Illness]
    
    
    
    init(name: String, dateBirth: Date, gender:String, residences: [Residence], illnesses : [Illness]) {
        self.name = name
        self.dateBirth = dateBirth
        self.gender = gender
        self.residences = residences
        self.illnesses = illnesses
    }
}
