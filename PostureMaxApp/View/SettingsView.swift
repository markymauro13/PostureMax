import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background color for the entire view
                Theme.backgroundColor.ignoresSafeArea()

                List {
                    // Notifications Link
                    HStack {
                        Text("Notifications")
                            .font(Theme.bodyFont)
                            .foregroundColor(Theme.textColor)
                        Spacer()
                        Image(systemName: "chevron.right") // Custom chevron
                            .foregroundColor(Theme.accentColor)
                    }
                    .contentShape(Rectangle()) // Make the entire row tappable
                    .onTapGesture {
                        // Navigate manually
                        navigateTo(PushNotificationsView())
                    }
                    .listRowBackground(Theme.backgroundColor)

                    // About Link
                    HStack {
                        Text("About")
                            .font(Theme.bodyFont)
                            .foregroundColor(Theme.textColor)
                        Spacer()
                        Image(systemName: "chevron.right") // Custom chevron
                            .foregroundColor(Theme.accentColor)
                    }
                    .contentShape(Rectangle()) // Make the entire row tappable
                    .onTapGesture {
                        // Navigate manually
                        navigateTo(AboutView())
                    }
                    .listRowBackground(Theme.backgroundColor)
                }
                .padding()
                .listStyle(InsetGroupedListStyle())
                .scrollContentBackground(.hidden) // Hide default List background
                .background(Theme.backgroundColor) // Apply background to List
                .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 5) // Drop shadow for List
            }
            .navigationTitle("Settings")
        }
    }

    // Manual navigation function
    private func navigateTo<Destination: View>(_ destination: Destination) {
        let rootController = UIApplication.shared.windows.first?.rootViewController
        rootController?.present(UIHostingController(rootView: destination), animated: true)
    }
}

#Preview {
    SettingsView()
}
