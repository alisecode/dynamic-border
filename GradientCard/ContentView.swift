//
//  ContentView.swift
//  GradientCard
//
//  Created by Alisa Serhiienko on 12.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var bcgRotation: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Color.black

            Image(.m3)
                .resizable()
                .scaledToFit()
                .frame(width: 256, height: 256)
                .overlay {
                    RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint: .bottom))
                }

            
            RoundedRectangle(cornerRadius: 6, style: .continuous)
                .frame(width: 130, height: 450)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.gradient1, Color.gradient2.opacity(0.5)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .rotationEffect(.degrees(bcgRotation))
                .mask {
                    RoundedRectangle(cornerRadius: 6, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .stroke(lineWidth: 3)
                        .frame(width: 256, height: 256)
                }
            
            VStack(spacing: 0) {
                
                Spacer()
                
                HStack (spacing: 6) {
                    Image(systemName: "apple.logo")
                        .foregroundStyle(.white)
                        .font(.system(size: 56))
                        .padding(.bottom, 8)
                    
                    
                    Text("M3")
                        .foregroundStyle(.white)
                        .font(.system(size: 56, weight: .bold))
                }
                .padding(.top, 42)
                
                Text("PRO")
                    .foregroundStyle(.white)
                    .font(.system(size: 32, weight: .semibold))
                
                Spacer()

                Text("Follow @alise.code for more")
                    .foregroundStyle(.white.opacity(0.8))
                    .font(.system(size: 18))
                    .padding(.bottom, 24)
            }
            
            
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                bcgRotation = 360
            }
        }
    }
}

#Preview {
    ContentView()
}
