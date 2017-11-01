//
//  GameResultViewController.swift
//  blinkapp
//
//  Created by PilGwonKim on 2017. 10. 30..
//  Copyright © 2017년 PilGwonKim. All rights reserved.
//

import UIKit

class GameResultViewController: UIViewController {
    
    var myScore: Int = 0
    var opponentScore: Int = 0
    
    @IBOutlet weak var myScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "RESULT"
        showResult()
    }
    
    func showResult() {
        myScoreLabel.text = "My Score: \(String.init(repeating: "❤️", count: myScore))"
        
        opponentScoreLabel.text = "Opponent Score: \(String.init(repeating: "❤️", count: opponentScore))"
        
        if myScore > opponentScore {
            resultLabel.text = "YOU WIN"
        } else if myScore < opponentScore {
            resultLabel.text = "YOU LOSE"
        } else {
            resultLabel.text = "DRAW"
        }
    }

}
