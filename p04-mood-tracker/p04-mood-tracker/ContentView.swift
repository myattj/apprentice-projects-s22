//
//  ContentView.swift
//  p04-mood-tracker
//
//  Created by Samuel Shi on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var moodCheckModel: MoodTrackerViewModel
    @State var mood: String = ""
    var body: some View {
        NavigationView{
            List{
                HStack{
                    TextField(
                        "Enter your mood", text: $mood
                    )
                    Button("Add"){
                        let checkIn = MoodCheckIn(mood: mood, timeStamp: Date())
                        moodCheckModel.checkIns.append(checkIn)
                    }
                }
                    ForEach(moodCheckModel.checkIns, id: \.id) { moodCheck in
                        VStack{
                            HStack{
                                padding()
                                Text("\(moodCheck.mood)")
                                padding()

                            }
                            Text("\(moodCheck.formattedTimeStamp)")
                                .font(.footnote)
                        }
                    }
                }
            .navigationTitle("Mood Tracker")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(moodCheckModel: MoodTrackerViewModel.init())
    }
}
