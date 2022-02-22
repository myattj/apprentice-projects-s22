//
//  NewPostViewModel.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI
class NewPostViewModel: ObservableObject {
    @Published var currentPostText: String = ""
    
    
    func makePost(){
        let post = Post(id: UUID(),
                        authorName: "Josh M",
                        authorUsername: "josh",
                        authorImageAddress: "scaryzuck",
                        datePosted: Date(),
                        postContent: currentPostText,
                        likeCount: 1010,
                        commentCount: 90)
        PostsService.makePost(post: post)
        
        
        
        currentPostText = ""
    }
        
    }
    
