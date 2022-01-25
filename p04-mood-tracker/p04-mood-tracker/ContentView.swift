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
        VStack{
            Spacer(minLength: 10)
            HStack{
                TextField(
                    "Enter your mood", text: $mood
                )
                Button(){
                    moodCheckModel.append(mood: mood)
                } label:{
                Text("Add")
                }
            }
            List{
                ForEach(moodCheckModel.checkIns, id: \.id) { moodCheck in
                    VStack{
                        Text("\(moodCheck.mood)")
                        Text("\(moodCheck.formattedTimeStamp)")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(moodCheckModel: MoodTrackerViewModel.init())
    }
}
