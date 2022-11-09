//
//  TextField1.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct TextField1: View {
    
    var hint: String
    @Binding var input: String
    
    var body: some View {
        TextField("", text: $input)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.theme.textColor.opacity(0.05))
            .cornerRadius(10)
    }
}

struct TextField1_Previews: PreviewProvider {
    @State static var username = "Hello world"

    static var previews: some View {
        TextField1(hint: "Username", input: $username)
    }
}
