
import Foundation

let values = ["Overlord", "Lackey", "Liar", "Minor Obstacle", "Major Obstacle", "Roleplay Foe", "Revelation", "Allies", "Long-range", "Gateway", "Deadly Peril"]
let suits = ["Spades", "Diamonds", "Clubs", "Hearts"]
let d4_timers = ["1", "2", "3", "4"]
let targets = ["10", "12", "15", "18"]


class Deck {
    //var cards: Array
    //var cards: Array<Card>
    var cards: Array<String>
    //var drawn_cards: Array<Card>
    var drawn_cards: Array<String>
    
    init() {
        self.cards = Deck.build()
        self.drawn_cards = []
    }
    
    //class func build() -> Array<Card> {
    class func build() -> Array<String> {
        var cards = [String]()
        for value in values {
            for suite in suits {
                cards.append("\(value) of \(suite)")
            }
        }
        for target in targets {
            cards.append("Target of \(target)")
        }
        for d4_timer in d4_timers {
            cards.append("Timer of \(d4_timer)")
        }
        
        cards.append("Doom")
        cards.append("Doom")
        return cards.shuffled()
    }
    
    
    func refill() {
        if cards.count < 8 {
            drawn_cards += cards
            cards = drawn_cards
            drawn_cards = []
        }
    }
    
    //func draw_card() -> Card {
    func draw_card() -> String {
        // add card to the end of drawn_cards
        let drawn_card_name = cards.popLast() ?? "Error"
        drawn_cards.append(drawn_card_name)
        // add drawn card back to the beginning of the deck
        
        refill()
        //cards.insert(drawn_card_name, at: 0)
         
        return drawn_card_name
    }
        
    
    //func draw(qty: Int) -> Array<Card> {
    func draw(qty: Int) -> Array<String> {
        var hand: [String] = []
        for _ in 1 ... qty {
            hand.append(draw_card())
        }
        return hand
    }
    
    
    

}
