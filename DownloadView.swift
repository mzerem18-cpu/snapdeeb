import SwiftUI
struct DownloadView: View {
    @State private var linkText: String = ""
    @State private var saveToPhotos: Bool = false
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90) 
    var body: some View {
        NavigationView {
            ZStack {
                bgColor.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        // Header
                        HStack {
                            Image(systemName: "play.square.fill").resizable().frame(width: 50, height: 50).foregroundColor(.black)
                            VStack(alignment: .leading) {
                                Text("snapdeeb").font(.title2).bold()
                                Text("Save Snapchat stories, Instagram stories, and TikTok videos").font(.caption).foregroundColor(.gray)
                            }
                            Spacer()
                        }.padding().background(Color.white).cornerRadius(20)
                        
                        // Download Source
                        VStack(alignment: .leading, spacing: 20) {
                            Text("⚡️ Download source").font(.headline).bold()
                            HStack {
                                PlatformBtn(title: "Snapchat", icon: "bolt.fill", isSelected: true)
                                PlatformBtn(title: "Instagram", icon: "camera.circle", isSelected: false)
                                PlatformBtn(title: "TikTok", icon: "music.note", isSelected: false)
                            }
                            Toggle("Save a copy to Photos", isOn: $saveToPhotos).font(.subheadline).toggleStyle(SwitchToggleStyle(tint: .yellow))
                            HStack {
                                Image(systemName: "link").foregroundColor(.gray)
                                TextField("Paste link here", text: $linkText)
                                Button("Paste") {}.bold().padding(.horizontal, 15).padding(.vertical, 8).background(Color.yellow).foregroundColor(.black).cornerRadius(15)
                            }.padding().background(Color(UIColor.systemGray6)).cornerRadius(15)
                        }.padding().background(Color.white).cornerRadius(20)
                    }.padding()
                }
            }.navigationBarHidden(true)
        }
    }
}
struct PlatformBtn: View {
    var title: String; var icon: String; var isSelected: Bool
    var body: some View {
        VStack {
            Image(systemName: icon).font(.title2)
            Text(title).font(.caption).bold()
        }.frame(maxWidth: .infinity).padding(.vertical, 15).background(isSelected ? Color.yellow : Color(UIColor.systemGray6)).foregroundColor(isSelected ? .black : .gray).cornerRadius(15)
    }
}
