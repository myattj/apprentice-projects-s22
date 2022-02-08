//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/1/22.
//

import SwiftUI

struct HomeFeedView: View {
    let posts: [Post] = PostList.defaultPosts
    var body: some View {
            ScrollView{
                ForEach(posts, id: \.self){ post in
                    PostView(post: post)
                }
            }
            .navigationTitle(Text("BlueBird"))
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    NavigationLink(destination: NewPostView()){
                        Image(systemName: "plus")
                        .foregroundColor(.yellow)
                        
                    }
                }
        
            }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
