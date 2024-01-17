
import Foundation

class Draw: Identifiable {
    var cards: Array<Card>
    let id: UUID
    
    
    init(cards: Array<Card>) {
        self.cards = cards
        self.id = UUID()
    }
    
}
