
import Foundation
import SwiftUI

struct CardView: View {
    let card_name: String
    
    var body: some View {
        VStack {
            Image(card_name)
                .resizable()
                .scaledToFit()
        }
        
    }
}
