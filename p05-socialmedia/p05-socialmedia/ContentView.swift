//
//  ContentView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView{
                HomeFeedView()
                    .tabItem(){
                        Image(systemName: "house.fill")
                    }
                ProfileView()
                    .tabItem(){
                        Image(systemName: "gearshape")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().bothColorSchemes()
    }
}
