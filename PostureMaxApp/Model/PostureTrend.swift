import Foundation

struct PostureTrend: Identifiable {
    let id = UUID()
    let dateRange: String
    let scoreChanges: [Double]
    let daysOfWeek: [String] // ["Mon", "Tue", "Wed", "Thu", "Fri"]
    let insights: [String]
}
