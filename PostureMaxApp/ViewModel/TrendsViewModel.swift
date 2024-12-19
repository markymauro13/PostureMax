//
//  TrendsViewModel.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


import Foundation

class TrendsViewModel: ObservableObject {
    @Published var trendData: PostureTrend?

    init() {
        loadTrendData()
    }

    private func loadTrendData() {
        trendData = PostureTrend(
            dateRange: "Dec 4-10, 2024",
            scoreChanges: [75,55, 80, 78, 82, 85, 99],
            daysOfWeek: ["Sat","Mon", "Tue", "Wed", "Thu", "Fri", "Sun"],
            insights: [
                "Posture score went up 15% compared to last week.",
                "Posture score goes down most frequently at 3 PM.",
                "You sat up straight more yesterday than the day before."
            ]
        )
    }
    
    private func getPostureScorePercentage() {
        
    }
    
}
