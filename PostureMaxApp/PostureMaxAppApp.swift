//
//  PostureMaxAppApp.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/2/24.
//

import SwiftUI

@main
struct PostureMaxAppApp: App {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false

    var body: some Scene {
        WindowGroup {
            if hasSeenOnboarding {
                MainAppView()
            } else {
                OnboardingView()
            }
        }
    }
}
