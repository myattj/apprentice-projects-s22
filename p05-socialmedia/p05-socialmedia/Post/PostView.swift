//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct PostView: View {
    let post: Post
    @State private var likeCount: Int = 10
    @State private var pressed: Bool = false

    var body: some View {
        HStack{
        Spacer().frame(width: 5)
        VStack{
            HStack{
                HStack{
                        Image(post.authorImageAddress)
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                    VStack(alignment: .leading){
                            Text(post.authorName)
                                .font(.body)
                            Text("@"+post.authorUsername)
                                .font(.footnote)
                                .foregroundColor(.green)
                            Spacer().frame(height: 4)
                            }
                        }
                Spacer().frame(height: 5)
                        Text(post.formattedDate)
                            .font(.footnote)
                            .foregroundColor(.pink)                        
                    }
                            Text(post.postContent)
                            .frame(alignment: .leading)

                        HStack{
                            Spacer().frame(height: 4)
                            Button(action: {
                                addLike()
                            }) {
                                if(pressed){
                                    HStack{
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.yellow)
                                        Text(display())
                                            .foregroundColor(.yellow)
                                    }
                                }
                                else{
                                    HStack{
                                        Image(systemName: "heart")
                                            .foregroundColor(.yellow)
                                        Text(display())
                                            .foregroundColor(.yellow)
                                    }
                                }
                            }
                            .buttonStyle(BorderlessButtonStyle())
                            HStack{
                                    NavigationLink(destination: CommentView()){
                                            Image(systemName: "quote.bubble")
                                            .foregroundColor(.yellow)
                                        Text(String(post.commentCount))
                                            .foregroundColor(.yellow)
                                    }
                            }
                            Spacer().frame(width: 4)

        }
        }
    }
        Spacer().frame(width: 5)
    }
    
    func addLike(){
        if(!pressed)
        {
            pressed = true
        }
        else{
            pressed = false
        }
    }
    
    func addComment(){
        
    }
    
    
    func display() -> String{
        if(pressed){
            return String(post.likeCount+1)
        }
        else{
            return String(post.likeCount)
        }
    }
}



struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .bothColorSchemes()
    }
}
