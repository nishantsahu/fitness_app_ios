//
//  MainView.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.theme.backgrounColor)
        UITabBar.appearance().barTintColor = UIColor(Color.theme.textColor)
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                    }
                }
                .tag(0)
            
            ActivityMonitorView()
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                    }
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                    }
                }
                .tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
