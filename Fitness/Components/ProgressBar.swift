//
//  ProgressBar.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct ProgressBar: View {
    
    
    
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle()
                .fill(Color.theme.accent)
                .frame(height: 30)
            
            Rectangle()
                .fill(Color.theme.secondaryColor)
                .frame(width: 40, height: 20)
                .padding()
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
