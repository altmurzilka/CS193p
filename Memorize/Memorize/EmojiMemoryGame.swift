//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by алтынпончик on 6/26/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"]
        return  MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model домофон с видеозвонком
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s) glassdoor
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
