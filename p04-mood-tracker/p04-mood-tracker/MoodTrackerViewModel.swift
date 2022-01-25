//
//  MoodTrackerViewModel.swift
//  p04-mood-tracker
//
//  Created by Josh Myatt on 1/24/22.
//

import SwiftUI

class MoodTrackerViewModel: ObservableObject {
    @Published var checkIns = [MoodCheckIn]()
    @Published var newCheckIn: MoodCheckIn?
    
    
    func append(mood: String) {
        let newCheckIn: MoodCheckIn = MoodCheckIn(mood: mood, timeStamp: Date.now)
        checkIns.append(newCheckIn)
    }
    
}


