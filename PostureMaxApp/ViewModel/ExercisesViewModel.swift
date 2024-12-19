//
//  ExercisesViewModel.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


import Foundation

class ExercisesViewModel: ObservableObject {
    @Published var exercises: [Exercise] = []

    init() {
        loadExercises()
    }

    private func loadExercises() {
        // Replace this with actual data fetching (e.g., from a local JSON or API)
        exercises = [
            Exercise(name: "Nerd Neck Stretch",
                     description: "Tuck chin, make it touch your chest hold for 5 seconds, repeat on left and right. Finally do backwards. Do this 3x.",
                     videoFileName: "nerd_neck_video.mp4"),
            Exercise(name: "Lower Back Stretch",
                     description: "Tuck chin, make it touch your chest hold for 5 seconds, repeat on left and right. Finally do backwards. Do this 3x.",
                     videoFileName: "lower_back_video.mp4"),
            Exercise(name: "Office Chair Movement",
                     description: "Sit upright and gently twist left and right to stretch your back muscles. Repeat 5 times.",
                     videoFileName: "office_chair_video.mp4")
        ]
    }
}
