
import Foundation
import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack {
            Image(card.imageName)
                .resizable()
                //.scaledToFill()
                .scaledToFit()
                //.grayscale()
            
                
            //Text(card.name )
            //Text(card.imageName)
            //Divider()
                
            //Text(card.desc)
            //Divider()
        }
        
    }
}
