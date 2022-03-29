//
//  MilesRanStore.swift
//  p06-runny
//
//  Created by Josh Myatt on 3/8/22.
//

import Foundation


struct MilesRanStore {

    
    static func save(miles: Double) -> Void{
        UserDefaults.standard.set(miles, forKey: "miles")
    }
    
    static func fetchMiles() -> Double {
        UserDefaults.standard.double(forKey:"miles")
    }
    
    
}
