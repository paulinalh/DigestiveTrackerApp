//
//  Illness.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class Illness {
    let id = UUID()
    var name: String
    var diagnosisDate: Date
    var isDiagnosed : Bool
    
    
    init(name: String, diagnosisDate: Date, isDiagnosed: Bool) {
        self.name = name
        self.diagnosisDate = diagnosisDate
        self.isDiagnosed = isDiagnosed
    }
}
