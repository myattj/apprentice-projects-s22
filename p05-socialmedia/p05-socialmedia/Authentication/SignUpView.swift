//
//  SignUpView.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            TextField("Enter your username", text: $username)
                .frame(alignment: .center)
            TextField("Enter your name", text: $name)
                .frame(alignment: .center)
            TextField("Enter your password", text: $password)
                .frame(alignment: .center)
            TextField("Confirm your password", text: $password)
                .frame(alignment: .center)
        
    }
        .navigationBarTitle("Create your account")
}
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
