import SwiftUI

struct MainTabView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemBackground
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
    }
    
    var body: some View {
        TabView {
            DownloadView()
                .tabItem {
                    Image(systemName: "arrow.down.circle.fill")
                    Text("Download")
                }
            
            LibraryView()
                .tabItem {
                    Image(systemName: "photo.on.rectangle")
                    Text("Library")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
        }
        .accentColor(.yellow) // ڕەنگی زەرد بۆ تابی دیاریکراو
    }
}
