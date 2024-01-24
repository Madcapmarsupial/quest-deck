
import Foundation

class Draw: Identifiable {
    var cards: Array<Card>
    let id: UUID
    let draw_num: Int

    
    
    init(cards: Array<Card>, draw_num: Int) {
        self.cards = cards
        self.id = UUID()
        self.draw_num = draw_num
    }
    
}
