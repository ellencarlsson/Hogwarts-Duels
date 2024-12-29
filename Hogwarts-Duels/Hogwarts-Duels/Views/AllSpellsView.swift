//
//  AllSpellsView.swift
//  Hogwarts-Duels
//
//  Created by Ellen Carlsson on 2024-12-29.
//

import SwiftUI

struct AllSpellsView: View {
    @State private var selectedTab: String = "Attack" // Håller reda på vald flik
    
    var body: some View {
        VStack(spacing: 0) {
            // Fliknavigation högst upp
            HStack {
                Spacer()
                TabButton(title: "Attack", isSelected: selectedTab == "Attack") {
                    selectedTab = "Attack"
                }
                
                TabButton(title: "Strategy", isSelected: selectedTab == "Strategy") {
                    selectedTab = "Strategy"
                }
                TabButton(title: "Defense", isSelected: selectedTab == "Defense") {
                    selectedTab = "Defense"
                }
                Spacer()
                
            }
            .padding(.top)
            
            .background(Color.white)
            
            // Innehållet för vald flik
            if selectedTab == "Attack" {
                AttackView()
            } else if selectedTab == "Strategy" {
                StrategyView()
            } else if selectedTab == "Defense" {
                DefenseView()
            }
        }
    }
}

struct TabButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(title.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                if isSelected {
                    Text(title)
                        .font(.custom("uncanny", size: 40))
                        .foregroundColor(isSelected ? .white : .blue)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                }

            }
            .background(isSelected ? Color.black : Color.pink)
            
        }
    }
}

// Exempelvyer för varje flik
struct AttackView: View {
    let spells = ["Expelliarmus", "hej", "jnnjn", "nnjn", "jnjn", "okoko", "okoko"]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(
                    columns: Array(repeating: GridItem(.flexible()), count: 3)
                ) {
                    ForEach(spells, id: \.self) { spell in
                        SpellIcon(name: spell)
                            .padding(.bottom, 23)

                        
                    }
                }
                .padding(.top, 30)

            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct StrategyView: View {
    var body: some View {
        VStack {
            Text("Strategy Content")
                .font(.largeTitle)
                .foregroundColor(.green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct DefenseView: View {
    var body: some View {
        VStack {
            Text("Defense Content")
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    AllSpellsView()
}
