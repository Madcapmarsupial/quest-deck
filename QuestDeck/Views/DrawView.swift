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
    //var cards: [Card]
    
    var body: some View {
        HStack {
            ForEach(draw.cards) { card in
                CardView(card: card)
            }
        }
    }
}

