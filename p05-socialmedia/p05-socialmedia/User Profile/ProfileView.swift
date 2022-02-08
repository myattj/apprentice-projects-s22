//
//  ProfileView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileView: View {
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    
    let userPosts: [Post] = PostList.defaultPosts

    var body: some View {
            List{
                HStack{
                    Image(profileImageAddress)
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                    VStack(alignment:.leading){
                        Text(name)
                            .font(.footnote)
                        Text("@"+username)
                            .font(.footnote)
                            .foregroundColor(.green)
                            .frame(alignment: .leading)
                    }
                    NavigationLink(destination: ProfileSettings()){
                        
                    }
                }
                VStack{
                        Text("All your Posts:")
                            .frame(alignment: .leading)
                        ForEach(userPosts, id: \.self){ post in
                            PostView(post: post)
                        }
                }
               
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
