//
//  TrendsView.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//

import SwiftUI
import Charts

struct TrendsView: View {
@StateObject private var viewModel = TrendsViewModel()

var body: some View {
    NavigationView {
        VStack(spacing: 20) {
            if let trend = viewModel.trendData {
                // Graph Section
                Chart {
                    ForEach(Array(trend.scoreChanges.enumerated()), id: \.0) { index, score in
                        LineMark(
                            x: .value("Day", trend.daysOfWeek[index]),
                            y: .value("Score", score)
                        )
                        .symbol(Circle())
                        .foregroundStyle(Theme.accentColor.gradient)
                    }
                }
                .frame(height: 250)
                .padding()
                .background(Theme.backgroundColor.opacity(0.8))
                .cornerRadius(10)
                .shadow(radius: 5)
                .chartXAxis {
                    AxisMarks(preset: .aligned, position: .bottom) { value in
                        AxisValueLabel()
                            .foregroundStyle(.white)
                            .font(.caption)
                    }
                }
                .chartYAxis {
                    AxisMarks(position: .leading) { value in
                        AxisValueLabel()
                            .foregroundStyle(.white)
                            .font(.caption)
                    }
                }

                // Date Range
                Text("Week of \(trend.dateRange)")
                    .font(Theme.bodyFont)
                    .foregroundColor(Theme.textColor)

                // Insights Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Insights")
                        .font(Theme.titleFont)
                        .foregroundColor(Theme.textColor)
                        .padding(.bottom, 5)

                    ForEach(trend.insights, id: \.self) { insight in
                        Text("• \(insight)")
                            .font(Theme.bodyFont)
                            .foregroundColor(Theme.textColor)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding()
                .background(Theme.backgroundColor.opacity(0.8))
                .cornerRadius(10)
                .shadow(radius: 5)
            } else {
                Text("Loading trends...")
                    .font(Theme.bodyFont)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Theme.backgroundColor.ignoresSafeArea())
        .navigationTitle("Trends")
        }
    }
}

#Preview {
    TrendsView()
}
