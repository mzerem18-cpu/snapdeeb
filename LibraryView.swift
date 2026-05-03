import SwiftUI

struct LibraryView: View {
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90)
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack {
                VStack(spacing: 16) {
                    Image(systemName: "tray.fill")
                        .font(.system(size: 35))
                        .frame(width: 80, height: 80)
                        .background(Color.yellow)
                        .cornerRadius(22)
                        .foregroundColor(.black)
                        .shadow(color: Color.yellow.opacity(0.4), radius: 10, x: 0, y: 5)
                    
                    Text("No saved media yet")
                        .font(.system(size: 22, weight: .bold))
                    
                    Text("Downloaded media will appear here, organized by platform then account.")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                .padding(.vertical, 40)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 5)
                .padding()
                
                Spacer()
            }
            .padding(.top, 60)
        }
    }
}
