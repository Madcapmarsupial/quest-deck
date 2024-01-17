
import Foundation

let values = ["Overlord", "Lackey", "The Deciever", "Obstacle", "Revelation", "Allies", "Long-range"]
let suits = ["Spades", "Diamonds", "Clubs", "Hearts"]
let d4_timers = ["1", "2", "3", "4"]
let targets = ["10", "12", "15", "18"]


class Deck {
    //var cards: Array
    var cards: Array<Card>
    var drawn_cards: Array<Card>
    
    init() {
        self.cards = Deck.build()
        self.drawn_cards = []
    }
    
    class func build() -> Array<Card> {
        var cards = [Card]()
        for value in values {
            for suite in suits {
                cards.append(Card(name: value, desc: suite))
            }
        }
        for target in targets {
            cards.append(Card(name: target, desc: "Target"))
        }
        for d4_timer in d4_timers {
            cards.append(Card(name: d4_timer, desc: "Timer"))
        }
        
        cards.append(Card(name: "Doom", desc: "Joker"))
        cards.append(Card(name: "Doom", desc: "Joker"))
        return cards.shuffled()
    }
    
    func draw_card() -> Card {
        var card = self.cards.popLast() ?? Card(name: "", desc: "")
        self.drawn_cards.append(card)
        return card
    }
   
    
    
    func draw(qty: Int) -> Array<Card> {
        var cards: [Card] = []
        for _ in 1 ... qty {
            var single_draw = draw_card()
            cards.append(single_draw)
        }
        return cards
    }
}
