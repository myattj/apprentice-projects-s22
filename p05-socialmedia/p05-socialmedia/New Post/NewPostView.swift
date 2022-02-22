//
//  NewPostView.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI

struct NewPostView: View {
    @StateObject var vm: NewPostViewModel = NewPostViewModel.init()
    var body: some View {
        VStack{
            TextEditor(text: $vm.currentPostText)
            
            Button("Make Post"){
                vm.makePost()
            }
            
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
