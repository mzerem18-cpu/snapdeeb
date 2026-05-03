import SwiftUI
import UIKit

struct SettingsView: View {
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90)
    
    var body: some View {
        NavigationView {
            ZStack {
                bgColor.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 15) {
                        HStack {
                            Image(systemName: "gearshape.fill").resizable().frame(width: 40, height: 40).foregroundColor(.black)
                            VStack(alignment: .leading) {
                                Text("snapdeeb").font(.title2).fontWeight(.bold)
                                Text("Settings, official links, and app information.").font(.caption).foregroundColor(.gray)
                            }
                            Spacer()
                        }.padding().background(Color.white).cornerRadius(20)
                        
                        SectionCard(icon: "globe", iconColor: .green, title: "Language", subtitle: "Change app language and layout direction.") {
                            HStack {
                                VStack(alignment: .leading) { Text("English").foregroundColor(.blue).fontWeight(.bold); Text("Current language").font(.caption).foregroundColor(.gray) }
                                Spacer(); Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                            }.padding().background(Color(UIColor.systemGray6)).cornerRadius(15)
                        }
                        
                        SectionCard(icon: "circle.lefthalf.filled", iconColor: .yellow, title: "Appearance", subtitle: "Choose the mode that fits your device.") {
                            HStack {
                                Text("System").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical, 10).background(Color.yellow).cornerRadius(10)
                                Text("Light").frame(maxWidth: .infinity).padding(.vertical, 10).background(Color(UIColor.systemGray6)).cornerRadius(10)
                                Text("Dark").frame(maxWidth: .infinity).padding(.vertical, 10).background(Color(UIColor.systemGray6)).cornerRadius(10)
                            }
                        }
                        
                        SectionCard(icon: "lock.shield.fill", iconColor: .green, title: "Privacy", subtitle: "Clear screen for storage and permission details.") {
                            HStack { Text("Open Privacy Center").fontWeight(.bold); Spacer(); Image(systemName: "chevron.right").foregroundColor(.gray) }.padding().background(Color(UIColor.systemGray6)).cornerRadius(15)
                        }
                        
                        SectionCard(icon: "info.circle.fill", iconColor: .cyan, title: "App Information", subtitle: "Developer info, channels, and contact links.") {
                            HStack {
                                Image(systemName: "theatermasks.fill").resizable().frame(width: 40, height: 40).foregroundColor(.purple)
                                VStack(alignment: .leading) {
                                    Text("Developer").font(.caption).foregroundColor(.gray)
                                    Text("✨ INC DEV").font(.subheadline).fontWeight(.bold).foregroundColor(.white).padding(.horizontal, 10).padding(.vertical, 5).background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(10)
                                }
                                Spacer()
                                VStack { Text("Active").font(.caption).foregroundColor(.green); Circle().fill(Color.green).frame(width: 8, height: 8) }
                            }.padding().background(Color(UIColor.systemGray6)).cornerRadius(15)
                        }
                    }.padding()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct SectionCard<Content: View>: View {
    var icon: String; var iconColor: Color; var title: String; var subtitle: String; let content: Content
    init(icon: String, iconColor: Color, title: String, subtitle: String, @ViewBuilder content: () -> Content) {
        self.icon = icon; self.iconColor = iconColor; self.title = title; self.subtitle = subtitle; self.content = content()
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: icon).foregroundColor(iconColor).font(.title2)
                VStack(alignment: .leading) { Text(title).font(.headline); Text(subtitle).font(.caption).foregroundColor(.gray) }
            }
            content
        }.padding().background(Color.white).cornerRadius(20)
    }
}
