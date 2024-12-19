import SwiftUI
import AVKit

struct ExercisesView: View {
    @StateObject private var viewModel = ExercisesViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Title
//                Text("Recommended Posture Exercises")
//                    .font(Theme.titleFont)
//                    .foregroundColor(Theme.textColor)
//                    .padding(.top, 20)

                // Scrollable Content
                ScrollView {
                    ForEach(viewModel.exercises) { exercise in
                        VStack(alignment: .leading, spacing: 10) {
                            // Video or Placeholder
                            if let videoURL = Bundle.main.url(forResource: exercise.videoFileName, withExtension: nil) {
                                VideoPlayer(player: AVPlayer(url: videoURL))
                                    .frame(height: 150)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Theme.accentColor, lineWidth: 2)
                                    )
                            } else {
                                Rectangle()
                                    .fill(Theme.accentColor)
                                    .frame(height: 150)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Video not available")
                                            .foregroundColor(Theme.textColor)
                                            .font(Theme.bodyFont)
                                    )
                            }

                            // Exercise Name and Description
                            Text(exercise.name)
                                .font(Theme.titleFont)
                                .foregroundColor(Theme.textColor)

                            Text(exercise.description)
                                .font(Theme.bodyFont)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Theme.backgroundColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, 20) // Add padding below content
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Theme.backgroundColor.ignoresSafeArea())
            .navigationTitle("Exercises")
        }
    }
}

#Preview {
    ExercisesView()
}
