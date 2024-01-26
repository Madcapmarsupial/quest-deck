
import Foundation

let values = ["Overlord", "Lackey", "Liar", "Minor Obstacle", "Major Obstacle", "Roleplay Foe", "Revelation", "Allies", "Long-range", "Gateway", "Deadly Peril"]
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
                cards.append(Card(name: value, desc: suite, imageName: "\(value) of \(suite)"))
            }
        }
        for target in targets {
            cards.append(Card(name: target, desc: "Target", imageName: "Target of \(target)"))
        }
        for d4_timer in d4_timers {
            cards.append(Card(name: d4_timer, desc: "Timer", imageName: "Timer of \(d4_timer)"))
        }
        
        cards.append(Card(name: "Doom", desc: "Joker", imageName: "Doom"))
        cards.append(Card(name: "Doom", desc: "Joker",  imageName: "Doom"))
        return cards.shuffled()
    }
    
    func draw_card() -> Card {
        let card = self.cards.popLast() ?? Card(name: "", desc: "", imageName: "error")
        self.drawn_cards.append(card)
        self.cards.insert(card, at: 0)
        return card
    }
   
    
    
    func draw(qty: Int) -> Array<Card> {
        var cards: [Card] = []
        for _ in 1 ... qty {
            let single_draw = draw_card()
            cards.append(single_draw)
        }
        return cards
    }
}
