//
//  ContentView.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoggedIn: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                if (isLoggedIn) {
                    MainView()
                } else {
                    LoginView(isLoggedIn: $isLoggedIn)
                }
                Spacer()
            }
            Spacer()
        }
        .foregroundColor(Color.theme.textColor)
        .accentColor(Color.theme.accent)
        .background(Color.theme.backgrounColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
