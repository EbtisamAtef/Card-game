//
//  Card.swift
//  Card Game
//
//  Created by Ebtisam on 10/18/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import Foundation

struct Card {
    
    var isFacedUp = false
    var isMatched = false
    var identifire: Int
    static var cardFactory = 0
    
    static func getUniquIdentifire() -> Int{
        cardFactory += 1
        return cardFactory
    }
    
    
    init() {
        self.identifire = Card.getUniquIdentifire()
    }
    
}
