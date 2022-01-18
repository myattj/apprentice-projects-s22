//
//  ContentView.swift
//  Occupancy Tracker
//
//  Created by Josh Myatt on 1/17/22.
//
//

import SwiftUI

struct ContentView: View {
    @State private var occupancy = 0

    var body: some View {
        VStack{
            Text("People: \(occupancy)")
            HStack{
                Button(action:{
                    self.up()
                }){
                    Image(systemName: "plus")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .padding()
                }
                Button(action:{
                    self.down()
                }){
                    Image(systemName: "minus")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .padding()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.pink)
    }
    
    func up()
    {
        occupancy+=1
    }
    func down(){
        if(occupancy>0){
            occupancy-=1
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
