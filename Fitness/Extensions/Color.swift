//
//  Color.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let backgrounColor = Color("BackgroundColor")
    let secondaryColor = Color("SecondaryColor")
    let textColor = Color("TextColor")
}
