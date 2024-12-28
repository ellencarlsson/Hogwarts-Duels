//
//  StartView.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-28.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                
                Spacer()
                
                VStack(spacing: 20) {
                    OutlineButton(text: "Log in")
                    
                    FilledButton(text: "Register")
                }
                .padding(.bottom)
            }
        }
    }
}



#Preview {
    StartView()
}
