//
//  DrawView.swift
//  
//
//  Created by Sam Green on 1/16/24.
//

import Foundation
import SwiftUI

struct DrawView: View {
    let draw: [String]
    @State private var isCardGroupCollapsed = false

    var body: some View {
       
        VStack {
            ScrollView {
                      LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                          //ForEach(draw.cards) { card in
                          ForEach(draw, id: \.self) { card_name in
                              //CardView(card: card)
                              CardView(card_name: card_name)
                                  .padding()
                          }
                      }
                  }
        }
        //.background(Color.gray)
    }
        
}
