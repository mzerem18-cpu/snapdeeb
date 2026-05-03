import SwiftUI
import UIKit

struct LibraryView: View {
    let bgColor = Color(red: 0.98, green: 0.96, blue: 0.90)
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            VStack {
                VStack(spacing: 15) {
                    Image(systemName: "tray.fill").font(.system(size: 40)).padding().background(Color.yellow).cornerRadius(20).foregroundColor(.black)
                    Text("No saved media yet").font(.title2).fontWeight(.bold)
                    Text("Downloaded media will appear here, organized by platform then account.").font(.caption).foregroundColor(.gray).multilineTextAlignment(.center).padding(.horizontal)
                }.padding(.vertical, 40).padding(.horizontal, 20).background(Color.white).cornerRadius(20).padding()
                Spacer()
            }.padding(.top, 50)
        }
    }
}
