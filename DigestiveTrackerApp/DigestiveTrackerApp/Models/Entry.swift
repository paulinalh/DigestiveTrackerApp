//
//  Entry.swift
//  DigestiveTrackerApp
//
//  Created by Paulina Lopez Holguin on 14/05/24.
//

import Foundation
import SwiftData


@Model
final class Entry {
    let id = UUID()
    var date: Date
    //var log : String
    //TODO: define correctly the log object
    
    init(date: Date) {
        self.date = date
        //self.log = log
    }
}
