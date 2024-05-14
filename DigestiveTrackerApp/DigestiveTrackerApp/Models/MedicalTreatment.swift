//
//  MedicalTreatment.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData

@Model
final class MedicalTreatment {
    let id = UUID()
    var medicines: [Medicine]
    
    
    init(medicines: [Medicine]) {
        self.medicines = medicines
    }
}
