//
//  LoginView.swift
//  p05-socialmedia
//
//  Created by Josh Myatt on 2/22/22.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(){
            TextField("Enter your username", text: $username)
                .frame(alignment: .center)
            TextField("Enter your password", text: $password)
                .frame(alignment: .center)
            Button("Login"){
                
            }
        }
        .navigationTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
