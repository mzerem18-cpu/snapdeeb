import SwiftUI

struct SettingsView: View {
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90)
    
    var body: some View {
        NavigationView {
            ZStack {
                bgColor.ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 16) {
                        
                        // Header
                        HStack(spacing: 15) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .frame(width: 75, height: 75)
                                .background(Color.black)
                                .cornerRadius(20)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                Text("snapdeeb")
                                    .font(.system(size: 24, weight: .bold))
                                Text("Settings, official links, and app information.")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 5)
                        
                        // App Information (دیزاینی INC DEV)
                        VStack(alignment: .leading, spacing: 15) {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(.cyan)
                                    .font(.system(size: 20))
                                VStack(alignment: .leading) {
                                    Text("App Information")
                                        .font(.system(size: 16, weight: .bold))
                                    Text("Developer info, channels, and contact links.")
                                        .font(.system(size: 12))
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.bottom, 5)
                            
                            HStack {
                                Image(systemName: "theatermasks.fill")
                                    .font(.system(size: 25))
                                    .frame(width: 55, height: 55)
                                    .background(Color.purple.opacity(0.1))
                                    .foregroundColor(.purple)
                                    .cornerRadius(15)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Developer")
                                        .font(.system(size: 12))
                                        .foregroundColor(.gray)
                                    
                                    Text("✨ INC DEV")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 14)
                                        .padding(.vertical, 6)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(12)
                                }
                                Spacer()
                                VStack {
                                    Text("Active")
                                        .font(.system(size: 12))
                                        .foregroundColor(.green)
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 8, height: 8)
                                }
                            }
                            .padding(15)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(16)
                            
                        }
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 5)
                        
                        // Version
                        HStack {
                            Image(systemName: "a.square.fill")
                                .font(.system(size: 35))
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                Text("snapdeeb")
                                    .font(.system(size: 16, weight: .bold))
                                Text("v5.1")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }
                            Spacer()
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
