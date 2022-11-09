//
//  HomeBannerCard.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct HomeBannerCard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.theme.accent)
                .frame(height: 200)
                .cornerRadius(20)
            
            VStack {
                
            }
        }
    }
}

struct HomeBannerCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeBannerCard()
    }
}
