
import SwiftUI

struct OnboardingPageView: View {
    var imageName: String
    var title: String
    var description: String
    var showGetStartedButton: Bool = false
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .foregroundColor(.pink)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            if showGetStartedButton {
                Button(action: {
                    hasSeenOnboarding = true
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
        }
        .padding()
    }
}

#Preview {
    OnboardingPageView(imageName: "image", title: "Title", description: "desc")
}
