import SwiftUI

struct MainAppView: View {
    @State private var selectedTab = 0

    init() {
        // Customize unselected tab items to be white
        UITabBar.appearance().unselectedItemTintColor = .white
        // Optional: Make tab bar background darker
        UITabBar.appearance().backgroundColor = UIColor(Theme.backgroundColor)
        // Set border color
        UITabBar.appearance().standardAppearance.shadowColor = UIColor(Theme.accentColor) // or any color you want
        // If you want to remove the border completely, use:
        // UITabBar.appearance().standardAppearance.shadowImage = UIImage()
        // UITabBar.appearance().standardAppearance.shadowColor = nil
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            ExercisesView()
                .tabItem {
                    Image(systemName: "figure.flexibility")
                    Text("Exercises")
                }
                .tag(0)
            TrendsView()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Stats")
                }
                .tag(0)
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(0)
        }
        .accentColor(Theme.accentColor)
        .background(Color.clear)
        .navigationBarStyle()
    }
}

#Preview {
    MainAppView()
}
