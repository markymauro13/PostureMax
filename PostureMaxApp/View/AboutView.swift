//
//  AboutView.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("PostureMax App")
                .font(.largeTitle)
                .padding()
            Text("This app helps you improve posture by providing analytics, insights, and recommended exercises.")
            Text("Developed by Mauro Apps LLC")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("About")
    }
}

#Preview {
    AboutView()
}
