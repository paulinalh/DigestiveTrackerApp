//
//  RowComponent.swift
//  DigestiveTrackerApp
//
//  Created by Aleksandr Morozov on 15/05/24.
//

import SwiftUI
import CoreHaptics

struct RowButtonComponent: View {
    
    var mainColor: Color // Color to be set from parent
    var darkColor: Color // Color to be set from parent

    
    @State private var isToggled = false
    @State private var isPressed = false
    
    @State private var scale: CGFloat = 1.0
    
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        
        Capsule()
            .fill(.white)
            .strokeBorder(.blueDark.opacity(0.6), lineWidth: isToggled ? 2 : 0)
            .onAppear(perform: setupHaptics)
            .overlay(
                HStack{
                    Text("Blueberries")
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                        .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    ZStack{
                        Circle()
                            .fill(.blueMain.opacity(0.4))
                            .padding(5)
                        
                        Image(systemName: isToggled ? "minus" : "plus")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color(.blueDark))
                        
                    }
                }
            )
            .frame(width: UIScreen.main.bounds.width-30, height: 35)
            .scaleEffect(scale)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        
                        //Check Haptics Settings, if haptics are on -> Play
                        buttonPressedHaptics()
                        
                        withAnimation(.spring(response: 0.15, dampingFraction: 0.5, blendDuration: 0)) {
                            scale = 0.95
                        }
                    }
                    .onEnded { _ in

                        withAnimation(.spring()) {
                            scale = 1.0
                            isToggled.toggle()
                        }
                    }
            )
        
        
    }
    
    
    func setupHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    func buttonPressedHaptics() {
        // Make sure that the device supports haptics
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        var events = [CHHapticEvent]()

        // Create one intense, sharp tap
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.5)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.2)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)

        // Convert those events into a pattern and play it immediately
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern: \(error.localizedDescription).")
        }
    }
    
}

#Preview {
    RowButtonComponent(mainColor: .blueMain, darkColor: .darkBlue)
}
