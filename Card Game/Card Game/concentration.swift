//
//  concentration.swift
//  Card Game
//
//  Created by Ebtisam on 10/18/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import Foundation

class Concentration{
    
    var Cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard:Int?
    
    func choosecard(at index:Int) {
        
        if !Cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard , matchIndex != nil {
                if Cards[matchIndex].identifire == Cards[index].identifire{
                   Cards[matchIndex].isMatched = true
                    Cards[index].isMatched = true
                }
                    
                    Cards[index].isFacedUp = true
                    indexOfOneAndOnlyFaceUpCard = nil
                }
                
                
            else{
                
                for flipDownIndex in Cards.indices{
                    Cards[flipDownIndex].isFacedUp = false
                }
                
                Cards[index].isFacedUp = true
                indexOfOneAndOnlyFaceUpCard = index

            }
        }
    }
    
    
    init(numOfpairscard:Int) {
        
        for identifire in 1...numOfpairscard{
            let card = Card()
            Cards += [card, card]
        }
    
    
    
    
    }
    
}
