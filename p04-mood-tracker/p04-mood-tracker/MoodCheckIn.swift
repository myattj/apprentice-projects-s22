//
//  MoodCheckIn.swift
//  p04-mood-tracker
//
//  Created by Josh Myatt on 1/24/22.
//

import SwiftUI

struct MoodCheckIn: Codable, Identifiable {
    let id = UUID()
    let mood: String
    let timeStamp: Date
    var formattedTimeStamp: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return(formatter.string(from: timeStamp))
    }
}


extension MoodCheckIn {
    static var example: MoodCheckIn {
        MoodCheckIn(mood: "test", timeStamp: Date.now)
    }
}
