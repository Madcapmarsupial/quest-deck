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
    @State private var draws: [Draw] = []
    @State var draw_count: Int = 0
    @State var current_draw: Draw = Draw(cards: [], draw_num: 0)
    @State private var isCardGroupCollapsed = true
    
    
    
    var body: some View {
        Text("QuestDeck")
                .bold()
                .font(.title)
        Divider()
            // draw buttons 3.. 4.. etc
            HStack {
                //Image(systemName: "globe")
                //  .imageScale(.large)
                // .foregroundStyle(.tint)
                Spacer()
                ForEach(3..<7) { index in
                    //Spacer()
                    Button("Draw \(index)") {
                        let hand = scene_deck.draw(qty: index)
                        draw_count += 1
                        draws.insert(Draw(cards: hand, draw_num: draw_count), at: 0)
                        current_draw = draws.last!
                    }
                    Spacer()
                        
                }
            }
            
            //current draw Box
            GroupBox() {

                    // display our current draw
                DrawView(draw: current_draw)
                .frame(height: 200)
                   //Toggle(isOn: $userAgreed) {
                     //  Text("I agree to the above terms")
                   //}
            }
           
            
       
        Text("Your Draws")
            .padding()
        
            NavigationStack {
                ScrollView {
                        if !isCardGroupCollapsed {
                            ForEach(draws) { draw in
                                LazyVStack {
                                    //Label("Draw \(draw.draw_num)", systemImage: "building.columns")
                                    Button(action: { self.current_draw = draw}) {
                                        HStack { // stack of draws
                                            ZStack (alignment: .bottomLeading) { 
                                                // stack of card views
                                                
                                                ForEach(0..<draw.cards.count) { index in
                                                    CardView(card: draw.cards[index])
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
                        Button(action: { withAnimation { self.isCardGroupCollapsed.toggle()}}) {
                            Image(systemName: isCardGroupCollapsed ? "chevron.right.circle" : "chevron.down.circle")
                        },
                    
                    trailing:
                        Button("Clear Draws") {
                            draws = []
                            current_draw = Draw(cards: [], draw_num: 0)
                        })
            }
            
            
            //.foregroundColor(.red)
        }
        
        
        
    } // View
        

#Preview {
    ContentView()
}
