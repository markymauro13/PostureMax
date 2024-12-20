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
    
    // Custom Toolbar Item
    static func customToolbarTitle(_ title: String, color: Color = textColor, spacing: CGFloat = 75) -> ToolbarItem<Void, some View> {
        ToolbarItem(placement: .navigationBarLeading) {
            VStack {
                Spacer().frame(height: spacing) // Vertical spacing
                Text(title)
                    .font(.largeTitle) // Match default navigation title size
                    .fontWeight(.bold) // Match default style
                    .foregroundColor(color) // Use custom or default color
            }
        }
    }

    struct NavigationBarModifier: ViewModifier {
        var backgroundColor: Color
        var titleColor: Color
        
        init(backgroundColor: Color = Theme.backgroundColor, titleColor: Color = Theme.textColor) {
            self.backgroundColor = backgroundColor
            self.titleColor = titleColor
            
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(backgroundColor)
            appearance.largeTitleTextAttributes = [
                .foregroundColor: UIColor(titleColor)
            ]
            appearance.titleTextAttributes = [
                .foregroundColor: UIColor(titleColor)
            ]
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        
        func body(content: Content) -> some View {
            content
        }
    }
}

struct ButtonStyle {
    let foregroundColor: Color
    let backgroundColor: Color
    let cornerRadius: CGFloat
}

// Add a convenient extension to View
extension View {
    func navigationBarStyle(
        backgroundColor: Color = Theme.backgroundColor,
        titleColor: Color = Theme.textColor
    ) -> some View {
        self.modifier(Theme.NavigationBarModifier(
            backgroundColor: backgroundColor,
            titleColor: titleColor
        ))
    }
}
