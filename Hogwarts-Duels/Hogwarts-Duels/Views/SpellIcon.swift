//
//  SpellIcon.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-29.
//

import SwiftUI

struct SpellIcon: View {
    let name: String
    
    var body: some View {
        
        VStack {
            
            Image("expelliarmus")
                .resizable()
                .scaledToFill()

                .frame(width: 40)
            
            Text(name)
                .font(.custom("uncanny", size: 24))
                .foregroundColor(.white)
                .frame(width: 90)

        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.red]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(10)
        .frame(width: 90, height: 90)
        .shadow(radius: 10)

    }
}

#Preview {
    SpellIcon(name: "Expelliarmus")
}
