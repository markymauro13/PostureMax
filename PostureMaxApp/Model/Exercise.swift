//
//  Exercise.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//
import Foundation

struct Exercise: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let videoFileName: String
}
