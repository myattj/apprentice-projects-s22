//
//  HomeFeedViewModel.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI

class HomeFeedViewModel: ObservableObject {
    @Published var posts: [Post] = []
    func fetchPosts(){
        posts = PostsService.getHomeFeed()
    }
    init(){
        fetchPosts()
    }
    
}
