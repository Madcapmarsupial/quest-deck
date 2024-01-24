//
//  ContentView.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

import SwiftUI
struct ContentView: View {
    
    //var card = Card(name: "Doom", desc: "Joker")
    @State var scene_deck = Deck()
    //@State var drawn_cards = [Card(name: "1", desc: "one")]
    @State private var draws: [Draw] = []
    @State var draw_count: Int = 0
    @State var current_draw: Draw = Draw(cards: [], draw_num: 0)
    @State private var isCardGroupCollapsed = false
    
    
    
    var body: some View {
        //var card = deck.cards.popLast() ?? Card(name: "hi", desc: "hi")
        //drawn_cards.append(card)
        //let drawn_card = deck.draw()
        VStack {
            Text("QuestDeck")
                .bold()
                .font(.title)
        }
        
        Divider()
        
        VStack(alignment: .leading) {
           
            
            HStack {
                //Image(systemName: "globe")
                //  .imageScale(.large)
                // .foregroundStyle(.tint)
                Spacer()
                Button("Draw 3") {
                    let hand = scene_deck.draw(qty: 3)
                    draw_count += 1
                    draws.append(Draw(cards: hand, draw_num: draw_count))
                    current_draw = draws.last!
                }
               
                Spacer()
                
                Button("Draw 4") {
                    let hand = scene_deck.draw(qty: 4)
                    draw_count += 1
                    draws.append(Draw(cards: hand, draw_num: draw_count))
                    current_draw = draws.last!
                }
                Spacer()
                
                Button("Draw 5") {
                    let hand = scene_deck.draw(qty: 5)
                    draw_count += 1
                    draws.append(Draw(cards: hand, draw_num: draw_count))
                    current_draw = draws.last!
                }
                Spacer()
                
                Button("Draw 6") {
                    let hand = scene_deck.draw(qty: 6)
                    draw_count += 1
                    draws.append(Draw(cards: hand, draw_num: draw_count))
                    current_draw = draws.last!
                }
                
                Spacer()
                //.foregroundColor(.red)
                
            }
            Spacer()
            .padding()
            
            DrawView(draw: current_draw)
            
            
            NavigationStack {
                ScrollView {
                        if !isCardGroupCollapsed {
                            ForEach(draws) { draw in
                                //DrawView(draw: draw)
                                //DrawView(draw: draws.last ?? Draw(cards: [], draw_num: 1))
                            Button("Draw \(draw.draw_num)") {
                                current_draw = draw
                            }
                        }
                    }
                }
                .navigationBarItems(
                    leading:
                        Button(action: { withAnimation { self.isCardGroupCollapsed.toggle()}}) {
                            Image(systemName: isCardGroupCollapsed ? "chevron.right.circle" : "chevron.down.circle")
                        },
                    
                    trailing:
                        Menu("menu") {
                            Text("Clear draws")
                        })
            }
            .foregroundColor(.red)
        }
    } // View
}
#Preview {
    ContentView()
}
