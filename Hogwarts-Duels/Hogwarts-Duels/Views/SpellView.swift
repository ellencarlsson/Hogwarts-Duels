//
//  SpellView.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-28.
//

import SwiftUI

struct SpellDetailView: View {
    
    var body: some View {
        VStack() {
            VStack {
                Image("expelliarmus")
                    .resizable()
                        .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("Expelliarmus")
                    .font(.custom("uncanny", size: 60))
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.black]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
            )
            
            VStack {
                
                
                HStack {
                    Image("attack")
                        .resizable()
                            .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    /*Image("strategy")
                        .resizable()
                            .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Image("defense")
                        .resizable()
                            .scaledToFit()
                        .frame(width: 100, height: 100)*/
                }
                
                HStack {
                    HStack {
                        
                        Image(systemName: "bolt.fill")
                            .font(.system(size: 40))
                            .shadow(color: .red, radius: 5, x: 0, y: 0)
                            .foregroundColor(.red)

                        Text("4")
                            .foregroundColor(.white)
                            .font(.custom("uncanny", size: 40))


                    }
                    .padding()
                    Spacer()
                    HStack {
                        
                        Image(systemName: "flame.fill")
                            .font(.system(size: 40))
                            .shadow(color: .red, radius: 5, x: 0, y: 0)
                            .foregroundColor(.red)

                        Text("4")
                            .foregroundColor(.white)

                            .font(.custom("uncanny", size: 40))
                    }
                    .foregroundColor(.red)
                    .padding()
                    Spacer()
                    HStack {
                        
                        Image(systemName: "clock")
                            .font(.system(size: 40))
                            .shadow(color: .red, radius: 5, x: 0, y: 0)
                            .foregroundColor(.red)

                        Text("4")
                            .foregroundColor(.white)

                            .font(.custom("uncanny", size: 40))
                    }
                    .padding()
                }
                // Attribut som energikostnad, skada och cooldown
                
                
                // Effektbeskrivning
                VStack {
                    HStack {
                        Text("Effect:")
                            .font(.custom("uncanny", size: 30))

                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Text("Disarms the opponent by causing their wand to fly out of their hand.")
                            .font(.custom("uncanny", size: 30))
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)
                        Spacer()
                    }

                    
                }
                
            }
            .padding()
            .background(Color.black)
            
        }
        .background(Color.black)
       
        
    }
}

#Preview  {
        
        
    SpellDetailView()
    
}
