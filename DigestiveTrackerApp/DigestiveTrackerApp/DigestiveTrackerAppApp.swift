//
//  DigestiveTrackerAppApp.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 13/05/24.
//

import SwiftUI
import SwiftData

@main
struct DigestiveTrackerAppApp: App {
    
    var sharedModelContainer: ModelContainer = {
        
        let schema = Schema([
            Item.self,
            User.self,
            Residence.self,
            Illness.self,
            //Entry.self,
            Stool.self,
            MedicalTreatment.self,
            Medicine.self,
            Meal.self,
            Dish.self,
            Ingredient.self,
            Symptom.self,
            DigestiveHealth.self,
            GeneralHealth.self,
            MentalHealth.self,
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
