//
//  MemoryGame.swift
//  Memorize
//
//  Created by алтынпончик on 6/26/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            var content = ..
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: <#T##CardContent#>))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
