//
//  CircularProgressBar.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct CircularProgressBar: View {
    
    var progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.theme.secondaryColor, lineWidth: 30)
            Circle()
                .trim(from: 0, to: progress/100)
                .stroke(Color.theme.accent, lineWidth: 30)
            
            Text(String(progress)+"%")
                .font(.title2)
        }
        .background(Color.theme.backgrounColor)
        .foregroundColor(Color.theme.textColor)
    }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(progress: 40)
    }
}
