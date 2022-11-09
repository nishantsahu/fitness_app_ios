//
//  ProfileView.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                VStack {
                    Text("Profile")
                        .font(.title2)
                    
                    Spacer().frame(height: 30)
                    
                    VStack {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.theme.secondaryColor)
                            HStack(spacing: 20) {
                                ZStack {
                                    Circle()
                                        .fill(Color.theme.backgrounColor)
                                        .frame(width: 90, height: 90)
                                    
                                    Image(systemName: "person.fill")
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 80, height: 80)
                                }
                                
                                VStack (alignment: .center) {
                                    Text("Nishant Kumar Sahu")
                                        .font(.title2)
                                    Text("+91 8770440426")
                                        .font(.caption)
                                    Text("nishant.sahu106@gmail.com")
                                        .font(.caption)
                                }
                            }
                            .padding()
                        }
                        .frame(height: 100)
                        
                        
                    }
                }
                
                Spacer()
            }
            Spacer()
        }
        .foregroundColor(Color.theme.textColor)
        .background(Color.theme.backgrounColor)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
