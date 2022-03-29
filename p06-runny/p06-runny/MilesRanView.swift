//
//  MilesRanView.swift
//  p06-runny
//
//  Created by Josh Myatt on 3/8/22.
//

import SwiftUI

struct MilesRanView: View {
    
    @StateObject var vm = MilesRanViewModel()
    
    var body: some View {
        VStack{
            Text(String(vm.userMiles))
            HStack{
                Button("Remove miles"){
                    vm.decrement(amount: 0.5)
                }
                
                Button("Add miles"){
                    vm.increment(amount: 0.5)
                }
            }
        
        }
        
    }
}

struct MilesRanView_Previews: PreviewProvider {
    static var previews: some View {
        MilesRanView()
    }
}
