//
//  View+Modifiers.swift
//  PostureMaxApp
//
//  Created by [Your Name] on [Date].
//

import SwiftUI

extension View {
    // Background Modifier
    func applyBackground() -> some View {
        self.background(Theme.backgroundColor.ignoresSafeArea())
    }

    // Text Style Modifier
    func applyTitleStyle() -> some View {
        self.font(Theme.titleFont)
            .foregroundColor(Theme.textColor)
    }

    func applyBodyStyle() -> some View {
        self.font(Theme.bodyFont)
            .foregroundColor(Theme.textColor)
    }

    // Button Style Modifier
    func applyPrimaryButtonStyle() -> some View {
        self.padding()
            .background(Theme.accentColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
