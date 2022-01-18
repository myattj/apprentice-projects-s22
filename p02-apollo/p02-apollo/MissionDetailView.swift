//
//  MissionDetailView.swift
//  p02-apollo
//
//  Created by Josh Myatt on 1/18/22.
//

import SwiftUI

struct MissionDetailView: View {
    let mission: Mission
    var body: some View {
            List{
                HStack{
                    Spacer()
                    Image(mission.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text(mission.formattedLaunchDate)
                    Spacer()
                }
                Text(mission.description)
                    ForEach(mission.crew, id: \.id){crew in
                        HStack{
                            Image(crew.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            Text(crew.name)
                        }
                    }
                }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct MissionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MissionDetailView(mission: Mission.example)
    }
}
