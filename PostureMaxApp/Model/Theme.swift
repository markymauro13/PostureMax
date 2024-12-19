//
//  Theme.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


import SwiftUI

struct Theme {
    // Colors
    static let backgroundColor = Color(hex: "2A2A2A")
    static let accentColor = Color(hex: "FF59BD")
    static let textColor = Color.white

    // Fonts
    static let titleFont = Font.system(size: 24, weight: .bold)
    static let bodyFont = Font.system(size: 16, weight: .regular)
    static let buttonFont = Font.system(size: 18, weight: .semibold)

    // Buttons
    struct Buttons {
        static let primary = ButtonStyle(
            foregroundColor: .white,
            backgroundColor: Theme.accentColor,
            cornerRadius: 10
        )
    }
}

struct ButtonStyle {
    let foregroundColor: Color
    let backgroundColor: Color
    let cornerRadius: CGFloat
}
