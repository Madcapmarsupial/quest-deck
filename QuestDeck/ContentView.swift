//
//  ContentView.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        //let deck = Deck()
        let card = Card(value: "deciever", suite: "spades")
        
        VStack {
            Text("QuestDeck")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                // card count
        
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text((card.value))
                Text(card.suite)
                // card.image
                //card.value
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
