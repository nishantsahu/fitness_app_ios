//
//  PrimaryButton.swift
//  Fitness
//
//  Created by Nishant Sahu on 07/11/22.
//

import SwiftUI

struct PrimaryButton: View {
    
    let label: String
    let function: () -> Void
    
    var body: some View {
        Button(label, action: function)
            .frame(width: 300, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.theme.accent))
            .foregroundColor(Color.theme.textColor)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(label: "Label") {
            
        }
    }
}
