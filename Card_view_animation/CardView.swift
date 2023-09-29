//
//  CardView.swift
//  Card_view_animation
//
//  Created by vignesh kumar c on 29/09/23.
//

import SwiftUI
import Lottie

struct CardView: View {
    
    var title = "Smaple"
    var icon = "faceid"
    var animate = "A"
    var color1 = Color(.blue)
    var color2 = Color(.cyan)
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 350, height: 250)
                .shadow(color: .gray, radius: 25, x: -10, y: 10)
            
            ZStack {
                Circle()
                    .fill(Color.cyan)
                    .frame(width: 50)
                Image(systemName:icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.white)
            }.offset(x: 140, y: -80)
            
            Text(title)
                .foregroundStyle(.white)
                .bold()
                .offset(x: -130, y: -80)
            
            LottieView(fileName: "send-email" )
                .frame(width: 250, height: 250)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView()
}
