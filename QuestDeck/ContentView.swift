//
//  ContentView.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

import SwiftUI
struct ContentView: View {
    //var card = Card(name: "Doom", desc: "Joker")
    //@State var drawn_cards = [Card(name: "1", desc: "one")]
    @State var scene_deck = Deck()
    @State var draw_count: Int = 0
    //@State private var draws: [Draw] = []
    //@State private var draws: [Array] = []
    @State private var draws: Array<Array<String>> = []
    @State private var isCardGroupCollapsed = true
    //@State var current_draw: Draw = Draw(cards: [], draw_num: 0)
    @State var current_draw: [String] = []
    
    
    
    
    
    var body: some View {
        Text("QuestDeck")
                .bold()
                .font(.title)
        
        
        
        Divider()
            // draw buttons 3.. 4.. etc
        HStack {
                Spacer()
                Menu("", systemImage: "questionmark.circle") {
                    Text("Draw 3: for a monster or room")
                    Text("Draw 4: for a session or dungeon")
                    Text("Draw 5: or 6: for a world or campaign")
                }
                Spacer()

                ForEach(3..<7) { index in
                    Button("Draw \(index)") {
                    let hand = scene_deck.draw(qty: index)
                    draw_count += 1
                    draws.append(hand)
                    current_draw = hand
                        
                }

                Spacer()
            }
        }
            //current draw Box
            GroupBox() {

                    // display our current draw
                DrawView(draw: current_draw)
                .frame(height: 200)
            }
           
        HStack {
            Spacer()
            Menu("", systemImage: "heart.fill") {
                Text("Emotion, Passion, Blood, Entaglement")
                    
            }
                .padding([.leading, .bottom, .trailing], 2.0)
                .foregroundColor(.red)
                .border(Color.black)
           
            Menu("", systemImage: "suit.club.fill") {
                Text("Simplicty, Nature, Earth, Raw, Bare, Brutish")
            }
                .foregroundColor(.black)
            Spacer()
            Menu("", systemImage: "suit.diamond.fill") {
                Text("Beuracracy, Fortune, Society, ")
            }
                .foregroundColor(.red)
            Spacer()
            Menu("", systemImage: "suit.spade.fill") {
                Text("Poison, Death, Deceit")
            }
                .foregroundColor(.black)
            Spacer()
        }
        
        Text("Your Draws")
            .padding()
        
            NavigationStack {
                ScrollView {
                        if !isCardGroupCollapsed {
                            ForEach(draws, id: \.self) { draw in
                                LazyVStack {
                                    //Label("Draw \(draw.draw_num)", systemImage: "building.columns")
                                    Button(action: { current_draw = draw}) {
                                        HStack { // stack of draws
                                            ZStack (alignment: .bottomLeading) { 
                                                // stack of card views
                                                ForEach(draw.indices, id: \.self) { index in
                                                    CardView(card_name: draw[index])
                                                        .frame(width: 200, height: 200)
                                                        .offset(x: CGFloat(index) * 30.0,
                                                                y: CGFloat(index) * 5.0)
                                                }
                                            }
                                            Spacer()
                                        } // Hs
                                    } // Button
                                    .padding(.vertical, 15)
                                }
                                .padding(.bottom, 30)
                                Divider()// LSV
                                
                        } // end loop
                    } // if end
                } // scroll view
                .navigationBarItems(
                    leading:
                        Button(action: { withAnimation { isCardGroupCollapsed.toggle()}}) {
                            Image(systemName: isCardGroupCollapsed ? "chevron.right.circle" : "chevron.down.circle")
                        },
                    trailing:
                        Button("Clear Draws") {
                            draws = []
                            //current_draw = Draw(cards: [], draw_num: 0)
                            current_draw = []
                        })
            }
        }
    } // View
        

#Preview {
    ContentView()
}
