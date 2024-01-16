
import Foundation

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack {
            Text(card.name)
            Text(card.desc)
            Divider()
        }
    }
}