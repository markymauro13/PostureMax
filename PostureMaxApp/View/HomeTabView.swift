import SwiftUI

struct HomeTabView: View {
    @StateObject private var viewModel = PostureScoreViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                
                // Posture Score Section
                VStack(spacing: 10) {
                    Text("Posture Score")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Theme.textColor)
                    
                    Text("\(viewModel.postureScore.score)/100")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(viewModel.postureScore.score < 50 ? .red : .green)
                    
                    Text(viewModel.statusMessage)
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                
                // Posture Streak Section
                VStack(spacing: 10) {
                    Text("Posture Streak")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Theme.textColor)
                    
                    Text("\(viewModel.postureScore.streak) day\(viewModel.postureScore.streak == 1 ? "" : "s")")
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                
                // Update Score Button
                Button(action: {
                    let randomScore = Int.random(in: 0...100) // Simulate a score update for now
                    viewModel.updateScore(newScore: randomScore)
                }) {
                    Text("Update Score")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Theme.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                Text("More Content")
                    .font(.subheadline)
                    .foregroundColor(Theme.textColor)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure it fills the entire screen
            .background(Theme.backgroundColor.ignoresSafeArea()) // Background covers entire screen
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeTabView()
}
