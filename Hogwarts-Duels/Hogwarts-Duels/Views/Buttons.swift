//
//  Buttons.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-28.
//

import SwiftUI

struct OutlineButton: View {
    let text: String
    
    var body: some View {
        Button(action: {
            
        }) {
            Text(text)
                .font(.custom("uncanny", size: 40))
                .shadow(color: Color.white.opacity(1), radius: 2, x: 0, y: 0)
                .font(.title3)
                .bold()
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.clear)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.white, lineWidth: 2)
                        .shadow(color: Color.white.opacity(1), radius: 2, x: 0, y: 0)
                )
                .padding(.horizontal, 40)
        }
    }
}

struct FilledButton: View {
    let text: String
    var body: some View {
        Button(action: {
            
        }) {
            Text(text)
            
                .font(.custom("uncanny", size: 40))
                .shadow(color: darkBrown.opacity(1), radius: 2, x: 0, y: 0)
                .foregroundColor(darkBrown)
                .font(.title3)
                .bold()
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.white, lineWidth: 2)
                        .shadow(color: Color.white.opacity(1), radius: 2, x: 0, y: 0)
                )
                .padding(.horizontal, 40)
        }
    }
}

