//
//  PostsService.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI

struct PostsService {
    static private var posts: [Post] = []
   
    static func getHomeFeed() -> [Post]{
        return PostsService.posts
    }
    
    static func makePost(post: Post){
        PostsService.posts.append(post)
    }
}

