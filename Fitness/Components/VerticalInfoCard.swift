//
//  VerticalInfoCard.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct VerticalInfoCard: View {
    
    var icon: String
    var label: String
    var progress: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.theme.accent)
                .frame(width: 100, height: 200)
            VStack {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(Color.theme.backgrounColor)
                Spacer().frame(height: 30)
                Text(label).foregroundColor(Color.theme.backgrounColor)
                Spacer().frame(height: 10)
                Text(progress+"%")
                    .foregroundColor(Color.theme.backgrounColor)
                    .font(.largeTitle)
            }
        }
    }
}

struct VerticalInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        VerticalInfoCard(icon: "person", label: "running", progress: "41")
    }
}
