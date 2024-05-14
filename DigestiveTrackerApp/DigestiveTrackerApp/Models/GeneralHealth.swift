//
//  GeneralHealth.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class GeneralHealth {
    let id = UUID()
    var symptoms : [Symptom]
    
    
    init(symptoms: [Symptom]) {
        self.symptoms = symptoms
    }
}
