//
//  Card.swift
//  QuestDeck
//
//  Created by Sam Green on 1/10/24.
//

//54 cards


// shuffle button
// dont shuffle them back in after draw


//single monster 3card draw
// room  4 card draw
// adventure  5 or 6



import Foundation

let values = ["Foe", "Obstacle", "Revelation", "Doom", "Allies", "Longrange"]
let suits = ["Spades", "Diamonds", "Clubs", "Hearts"]
let numbers = ["1", "2", "3", "4", "10", "12", "15", "18"]

class Card {
    var suite: String
    var value: String
    //var image: Image
    
    init(value: String, suite: String) {
        self.value = value
        self.suite = suite
    }
    
}
