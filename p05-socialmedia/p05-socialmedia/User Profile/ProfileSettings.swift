//
//  ProfileSettings.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileSettings: View {
    var body: some View {
        let post: Post = Post.example
        List{
            HStack{
                Image(post.authorImageAddress)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Change your profile picture")
                    .foregroundColor(.blue)
            }
            HStack{
                Image(systemName: "person.fill")
                Text("Change your name or username")
                    .foregroundColor(.blue)
            }
            HStack{
                Image(systemName: "delete.right.fill")
                    .foregroundColor(.red)
                Text("Delete your account")
                    .foregroundColor(.red)
            }
            
            

            
        }
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
