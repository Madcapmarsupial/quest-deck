//
//  DrawView.swift
//  
//
//  Created by Sam Green on 1/16/24.
//

import Foundation
import SwiftUI

struct DrawView: View {
    let draw: Draw
  
    @State private var isCardGroupCollapsed = false
    //var cards: [Card]
    
    var body: some View {
        HStack {
            

            ForEach(draw.cards) { card in
                
                CardView(card: card)
            }
            
            
            
            /*
             NavigationView {
             HStack {
             Section(header: Text("draw #")) {
             if !isCardGroupCollapsed {
             ForEach(draw.cards) { card in
             CardView(card: card)
             }
             }
             }
             }
             //.navigationBarTitle("Card App")
             .navigationBarItems(trailing:
             Button(
             action: { withAnimation { self.isCardGroupCollapsed.toggle() } }
             ){
             Image(systemName: isCardGroupCollapsed ? "chevron.right.circle" : "chevron.down.circle")
             }
             )
             }
             */
            
        }
    }
    
}
