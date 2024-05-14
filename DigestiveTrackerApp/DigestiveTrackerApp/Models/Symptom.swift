//
//  Symptom.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Symptom {
    let id = UUID()
    var name : String
    var intensity : Int
    var symptomType : String
    
    
    init(name: String, intensity : Int, symptomType: String) {
        self.name = name
        self.intensity = intensity
        self.symptomType = symptomType
    }
}
