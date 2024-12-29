//
//  MainView.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-29.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            LevelPin(currentLevel: 6, progress: 0.6)
        }
    }
}

struct LevelPin: View {
    var currentLevel: Int
    var progress: CGFloat
    
    let width = CGFloat(100)
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.pink)

                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                                .foregroundColor(Color.gray.opacity(0.3))
                Text("\(currentLevel)")
                    .font(.custom("uncanny", size: 30))
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
            }
            
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 20)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                    .frame(width: progress * width, height: 18)
            }
            .frame(width: width) 
            
            
        }
        .padding()
        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    MainView()
}
