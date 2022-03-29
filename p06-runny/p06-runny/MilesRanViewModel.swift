//
//  MilesRanViewModel.swift
//  p06-runny
//
//  Created by Josh Myatt on 3/8/22.
//

import Foundation
import SwiftUI



class MilesRanViewModel: ObservableObject {
    @Published private(set) var userMiles: Double = MilesRanStore.fetchMiles()

    
    
    func increment(amount: Double) -> Void{
        userMiles+=amount
        MilesRanStore.save(miles: userMiles)
    }
    
    func decrement(amount: Double) -> Void{
        userMiles-=amount
        MilesRanStore.save(miles: userMiles)
    }
    
    
}

