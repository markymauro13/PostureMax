
import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    @State private var currentPage = 0

    var body: some View {
        TabView(selection: $currentPage) {
            OnboardingPageView(
                imageName: "waveform.path.ecg",
                title: "Welcome to PostureMax",
                description: "Improve your posture with AI-powered analysis!"
            )
            .tag(0)

            OnboardingPageView(
                imageName: "figure.walk",
                title: "Track Your Progress",
                description: "Monitor and improve your posture daily."
            )
            .tag(1)

            OnboardingPageView(
                imageName: "star.fill",
                title: "Start Now",
                description: "Join the journey to better posture.",
                showGetStartedButton: true
            )
            .tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    OnboardingView()
}
