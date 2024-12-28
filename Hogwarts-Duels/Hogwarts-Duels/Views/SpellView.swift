//
//  SpellView.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-28.
//

import SwiftUI

struct Spell: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let energyCost: Int
    let damage: Int
    let cooldown: Int
    let effect: String
}

struct SpellDetailView: View {
    let spell: Spell
    
    var body: some View {
        VStack(spacing: 20) {
            // Namn och kategori
            Text(spell.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.yellow)
            
            Text("Kategori: \(spell.category)")
                .font(.title2)
                .foregroundColor(.white.opacity(0.8))
            
            // Attribut som energikostnad, skada och cooldown
            VStack(spacing: 10) {
                HStack {
                    Label("Energi", systemImage: "bolt.fill")
                    Spacer()
                    Text("\(spell.energyCost)")
                }
                .font(.title3)
                .padding()
                .background(Color.blue.opacity(0.3))
                .cornerRadius(10)
                
                HStack {
                    Label("Skada", systemImage: "flame.fill")
                    Spacer()
                    Text("\(spell.damage)")
                }
                .font(.title3)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
                
                HStack {
                    Label("Cooldown", systemImage: "clock")
                    Spacer()
                    Text("\(spell.cooldown) sek")
                }
                .font(.title3)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            }
            .foregroundColor(.white)
            
            // Effektbeskrivning
            Text("Effekt: \(spell.effect)")
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
            
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview  {
        
        
    SpellDetailView(spell: Spell(
        name: "Expelliarmus",
        category: "Attack",
        energyCost: 20,
        damage: 10,
        cooldown: 2,
        effect: "Avväpnar motståndaren genom att få trollstaven att flyga ur handen."
    ))
    
}
