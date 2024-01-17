//
//  ContentView.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

import SwiftUI
struct ContentView: View {
    
    //var card = Card(name: "Doom", desc: "Joker")
    @State var deck = Deck()
    //@State var drawn_cards = [Card(name: "1", desc: "one")]
    @State var draws: [Draw] = []
    
    var body: some View {
        
        //var card = deck.cards.popLast() ?? Card(name: "hi", desc: "hi")
        //drawn_cards.append(card)
        //let drawn_card = deck.draw()
        
        VStack {
            
            VStack {
                Text("QuestDeck")
                    .bold()
                    .font(.title)
                
                Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                    Text("draw 3")
                    Text("draw 4")
                    Text("draw 6")
                    Text("draw 1")
                }
                
                List {
                    // reorder draws
                    // list draws
                    if draws.isEmpty == false {
                        let current_card = draws[0].cards[0]
                        CardView(card: current_card)
                        
                        //list cards
                        // reorder cards
                    }
                }
                
                Spacer()
            }
            //Text(drawn_cards.last!.name)
            //Text(drawn_cards.last!.desc)
            
            
            VStack {
                //Image(systemName: "globe")
                //  .imageScale(.large)
                // .foregroundStyle(.tint)
                
                Button("Draw") {
                    let card = deck.draw_card()
                    deck.drawn_cards.append(card)
                }
                .foregroundColor(.red)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
