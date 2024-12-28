//
//  Colors.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-28.
//

import Foundation
import SwiftUI

func RGBColor(red: Double, green: Double, blue: Double) -> Color {
    return Color(
        red: red / 255.0,
        green: green / 255.0,
        blue: blue / 255.0
    )
}

let darkBrown = Color(RGBColor(red: 57, green: 47, blue: 45))
