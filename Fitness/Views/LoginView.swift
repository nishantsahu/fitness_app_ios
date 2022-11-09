//
//  LoginView.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn: Bool
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack {
            Text(Constant.title_login)
                .font(.largeTitle)
                .foregroundColor(Color.theme.textColor)
            Spacer().frame(height: 30)
            TextField1(hint: "Username", input: $username)
            Spacer().frame(height: 10)
            TextField1(hint: "Password", input: $password)
            Spacer().frame(height: 20)
            Button("Login") {
                if (username == "admin" && password == "password") {
                    self.isLoggedIn = true
                }
            }
            .frame(width: 100, height: 10)
            .padding()
            .background(Color.theme.accent)
            .foregroundColor(.white)
            .cornerRadius(20)
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
