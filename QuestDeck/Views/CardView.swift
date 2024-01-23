
import Foundation
import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                //.grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
            
                
            Text(card.name )
            Divider()
                
            Text(card.desc)
            Divider()
        }
    }
}
