import SwiftUI

class PostureScoreViewModel: ObservableObject {
    @Published var postureScore = PostureScore(score: 0, streak: 0)
    
    var statusMessage: String {
        switch postureScore.score {
        case 80...100:
            return "Excellent posture!"
        case 50..<80:
            return "Keep improving!"
        default:
            return "Needs improvement!"
        }
    }
    
    func updateScore(newScore: Int) {
        postureScore.score = newScore
        if newScore >= 80 {
            postureScore.streak += 1
        } else {
            postureScore.streak = 0
        }
    }
}
