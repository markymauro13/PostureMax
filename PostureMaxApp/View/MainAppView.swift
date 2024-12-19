import SwiftUI

struct MainAppView: View {
    @State private var selectedTab = 0

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
    }
}

#Preview {
    MainAppView()
}
