//
//  ViewController.swift
//  Card Game
//
//  Created by Ebtisam on 10/18/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {didSet {countMesg.text = "Flips is : \(flipCount)"}}

    lazy var game = Concentration(numOfpairscard: (cardButtons.count + 1) / 2)
    
    @IBOutlet weak var countMesg: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardnum = cardButtons.index(of: sender){
            game.choosecard(at: cardnum)
            updatViewFromModel()
        }else{
            print("choose another card")
        }
        
    }
    
    func updatViewFromModel(){
    //indices is range of count
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.Cards[index]
            
            if card.isFacedUp{
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }else{
                button.setTitle(" ", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 0.006447988014) : #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            }
        }
    }
    
    var emojiChoice = ["🌺","👻","❤️","🎈","🙈","☕️","🌻","👰"]
    
    var emoji = [Int:String]()
    
    func emoji(for card: Card) -> String{
        
        if emoji[card.identifire] == nil , emojiChoice.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoice.count)))
            emoji[card.identifire] = emojiChoice.remove(at: randomIndex)
                
        }
        
        // if emoji[card.identifire] != nil return it else return "?"
        return emoji[card.identifire] ?? "?"
    }
    
    func flipCard(withEmoji emoji:String, on button:UIButton){
        
        
        if button.currentTitle == emoji{
        }else{
            

        }
        
    }
    
    
}

