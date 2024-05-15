import SwiftUI

extension LinearGradient {
    // Gradients
    static let orangeGradient = LinearGradient(colors: [Color("OrangeLightGR"), Color("OrangeDarkGR")], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let blueGradient = LinearGradient(colors: [Color("BlueDarkGR"), Color("BlueLightGR")], startPoint: .leading, endPoint: .trailing)
    static let greenGradient = LinearGradient(colors: [Color("GreenLightGR"), Color("GreenDarkGR")], startPoint: .leading, endPoint: .trailing)
    static let redGradient = LinearGradient(colors: [Color("RedDarkGR"), Color("RedLightGR")], startPoint: .leading, endPoint: .trailing)
    static let yellowGradient = LinearGradient(colors: [Color("YellowDarkGR"), Color("YellowLightGR")], startPoint: .leading, endPoint: .trailing)
    static let pinkGradient = LinearGradient(colors: [Color("PinkLightGR"), Color("PinkDarkGR")], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let emeraldGradient = LinearGradient(colors: [Color("EmeraldDarkGR"), Color("EmeraldLightGR")], startPoint: .bottomLeading, endPoint: .topTrailing)
}

/*
 Example for LinearGradient:
    
 Rectangle()
    .fill(LinearGradient.orangeGradient)
 
 */
