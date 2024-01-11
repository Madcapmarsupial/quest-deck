//
//  ContentView.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

import SwiftUI




struct ContentView: View {
    var deck = Deck()
    //var card = Card(name: "Doom", desc: "Joker")
    
    var body: some View {
        VStack {
            Text("QuestDeck")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                // card count
        
            VStack {
                //Image(systemName: "globe")
                  //  .imageScale(.large)
                   // .foregroundStyle(.tint)
                
                let card = deck.cards[1]
                Text((card.name))
                Text(card.desc)
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
