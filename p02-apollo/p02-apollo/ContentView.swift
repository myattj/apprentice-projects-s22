//
//  ContentView.swift
//  p02-apollo
//
//  Created by Samuel Shi on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    // use this array of missions to show your mission content
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        NavigationView {
            List {
                Section("Missions"){
                    ForEach(missions, id: \.id) { mission in
                        NavigationLink(destination: MissionDetailView(mission: mission)){
                            Image(mission.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack{
                                    Text(mission.displayName)
                                        .frame(alignment:.trailing)
                                    Text(mission.formattedLaunchDate)
                                        .font(.footnote)
                                        .frame(alignment:.trailing)
                                }
                        }
                    }
                }
            }
        }
        .navigationTitle("Test")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
