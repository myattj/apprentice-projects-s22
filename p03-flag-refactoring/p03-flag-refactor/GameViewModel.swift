//
//  GameViewModel.swift
//  p03-flag-refactor
//
//  Created by Samuel Shi on 1/17/22.
//

import Foundation


class GameViewModel: ObservableObject {
    @Published var countries = CountryList.countries.shuffled().prefix(3)
    @Published var correctAnswerIndex = Int.random(in: 0...2)
    @Published var score = 0

    @Published var showingAlert = false
    @Published var alertTitle = ""
    
    
    
    var targetCountry: Country {
        return countries[correctAnswerIndex]
    }
    
    
    
    
    
    
    func correct(){
        alertTitle = "Correct"
        score += 1
    }
    
    
    func wrong(country: Country){
        alertTitle = "Wrong! Thats the flag of \(country)"
    }
}



