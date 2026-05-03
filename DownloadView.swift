import SwiftUI

struct DownloadView: View {
    @State private var linkText: String = ""
    @State private var saveToPhotos: Bool = false
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90) // ڕەنگی کرێمی باکگراوند
    
    var body: some View {
        NavigationView {
            ZStack {
                bgColor.ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        
                        // کارتی سەرەوە (لۆگۆ و ناو)
                        HStack(spacing: 15) {
                            Image(systemName: "play.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .frame(width: 75, height: 75)
                                .background(Color.black)
                                .cornerRadius(20)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                Text("snapdeeb")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.black)
                                Text("Save Snapchat stories, Instagram stories, and TikTok videos")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                            }
                            Spacer()
                        }
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 5)
                        
                        // کارتی سەرچاوەی داونلۆد
                        VStack(alignment: .leading, spacing: 20) {
                            HStack {
                                Image(systemName: "bolt.fill")
                                    .foregroundColor(.yellow)
                                Text("Download source")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            
                            // دوگمەی پلاتفۆرمەکان
                            HStack(spacing: 12) {
                                PlatformBtnModern(title: "Snapchat", icon: "bolt.fill", isSelected: true)
                                PlatformBtnModern(title: "Instagram", icon: "camera.circle", isSelected: false)
                                PlatformBtnModern(title: "TikTok", icon: "music.note", isSelected: false)
                            }
                            
                            // دوگمەی هەڵبژاردن (Toggle)
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Save a copy to Photos")
                                        .font(.system(size: 15, weight: .bold))
                                    Text("The app always saves internally. Photos is optional after download succeeds.")
                                        .font(.system(size: 11))
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Toggle("", isOn: $saveToPhotos)
                                    .labelsHidden()
                                    .toggleStyle(SwitchToggleStyle(tint: .yellow))
                            }
                            .padding(.vertical, 8)
                            
                            // شوێنی دانانی لینک
                            HStack {
                                Image(systemName: "link")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 10)
                                
                                TextField("Paste Snapchat link", text: $linkText)
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                
                                Button(action: {
                                    // لێرەدا کۆدی پەیست کار دەکات
                                }) {
                                    Text("Paste")
                                        .font(.system(size: 14, weight: .bold))
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 10)
                                        .background(Color.yellow)
                                        .foregroundColor(.black)
                                        .cornerRadius(12)
                                }
                                .padding(.trailing, 5)
                            }
                            .padding(.vertical, 5)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(16)
                            
                        }
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 5)
                        
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

// دیزاینی دوگمەی سناپچات و تیکتۆک
struct PlatformBtnModern: View {
    var title: String
    var icon: String
    var isSelected: Bool
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 20))
            Text(title)
                .font(.system(size: 12, weight: .bold))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(isSelected ? Color.yellow : Color(UIColor.systemGray6))
        .foregroundColor(isSelected ? .black : .gray)
        .cornerRadius(16)
    }
}
