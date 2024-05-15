//
//  DigestiveLogView.swift
//  DigestiveTrackerApp
//
//  Created by Aleksandr Morozov on 15/05/24.
//

import SwiftUI

struct DigestiveLogView: View {
    
    @State private var selectedDate = Date()
    
    private func formatDate(_ date: Date) -> String {
        // Create a calendar instance to compare dates
        let calendar = Calendar.current
        // Check if the selected date is today
        if calendar.isDateInToday(date) {
            return "Today"
        } else {
            // Return the formatted date string if not today
            return date.formatted(.dateTime.day().month())
        }
    }
    
    var body: some View {
        
        ZStack{
            
            Color.orangeBG
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                
                //Title "Digestive Health" and Time Picker
                HStack(alignment: .bottom){
                    
                    VStack(alignment: .leading){
                        Text("How is your")
                            .font(.system(size: 17, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Text("Digestive Health?")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.orangeDark)
                    }
                    
                    Spacer()
                    
                    // Cust
                    HStack(spacing: 2) {
                        
                        Text(formatDate(selectedDate))
                            .font(.system(size: 17, weight: .bold, design: .rounded))    .foregroundColor(.orangeDark)
                        
                        
                        Image(systemName: "calendar")
                            .font(.system(size: 17, weight: .bold, design: .rounded))  .foregroundColor(.orangeDark)
                        
                    }
                    .padding(.horizontal, 13)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).foregroundColor(.lightOrange))
                    
                    // Put the actual DataPicker here with overlay
                    .overlay {
                        DatePicker(
                            selection: $selectedDate,
                            in: ...Date(),
                            displayedComponents: [.date]){}
                            .labelsHidden()
                            .opacity(0.011)             // <<< here
                    }
                    
                }
                .padding()
                
                Spacer()
            }
            
            Text("Selected Symptoms")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.horizontal)
            
            
            Spacer()
            
        }
        
        
    }
    
    
    
    
}


#Preview {
    DigestiveLogView()
}
