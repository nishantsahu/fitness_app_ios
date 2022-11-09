//
//  HomeView.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack (spacing: 50) {
            HStack {
                Spacer()
                
                // your code
                VStack {
                    Text("Monthly Activity")
                        .font(.title2)
                    
                    ScrollView {
                        Spacer().frame(height: 30)
                        HStack (spacing: 50) {
                            CircularProgressBar(progress: 70.5)
                                .frame(width: 100)
                            VStack (alignment: .leading) {
                                Text("Average Train")
                                    .font(.title3)
                                
                                Text("November 2019")
                                    .font(.title2)
                                
                                ProgressBar()
                            }
                        }.padding()
                        
                        Spacer().frame(height: 30)
                        
                        HStack (spacing: 20) {
                            VerticalInfoCard(icon: "person", label: "running", progress: "42")
                            VerticalInfoCard(icon: "person", label: "jump rope", progress: "67")
                            VerticalInfoCard(icon: "person", label: "lifting", progress: "78")
                        }
                        
                        Spacer().frame(height: 30)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.theme.secondaryColor)
                            VStack(spacing: 20) {
                                ChecklistItem(isToday: true, day: "MON", task: "lifting and jogging", isCompleted: true)
                                ChecklistItem(isToday: false, day: "TUE", task: "running", isCompleted: false)
                                ChecklistItem(isToday: false, day: "WED", task: "swimming", isCompleted: false)
                            }
                            .padding()
                        }
                        
                        
                    }.padding()
                    
                }
                
                // your code ends
            }
        }
        .foregroundColor(Color.theme.textColor)
        .background(Color.theme.backgrounColor)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
