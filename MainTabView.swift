import SwiftUI
struct MainTabView: View {
    init() { UITabBar.appearance().backgroundColor = UIColor.systemBackground }
    var body: some View {
        TabView {
            DownloadView().tabItem { Label("Download", systemImage: "arrow.down.circle.fill") }
            LibraryView().tabItem { Label("Library", systemImage: "photo.on.rectangle") }
            SettingsView().tabItem { Label("Settings", systemImage: "slider.horizontal.3") }
        }
        .accentColor(.yellow)
    }
}
