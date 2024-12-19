import SwiftUI

extension Color {
    /// Initialize a Color from a hex code string
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // Ignore the '#' if present

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}
