//
//  PushNotificationsView.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


//
//  NotificationsView.swift
//  PostureMaxApp
//
//  Created by Mark Mauro on 12/19/24.
//


import SwiftUI

struct PushNotificationsView: View {
    var body: some View {
        VStack {
            Text("Make sure you enable Notifications for PostureMax App on your iPhone settings.")
                .font(.headline)
                .padding()
            Spacer()
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    PushNotificationsView()
}
