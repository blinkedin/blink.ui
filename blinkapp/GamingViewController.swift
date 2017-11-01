//
//  GamingViewController.swift
//  blinkapp
//
//  Created by PilGwonKim on 2017. 10. 30..
//  Copyright © 2017년 PilGwonKim. All rights reserved.
//

import UIKit

class GamingViewController: UIViewController {

    var myScore = 5
    var opponentScore = 5
    
    @IBOutlet weak var myScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "GAMING"
    }
    
    func initScoreLabels() {
        myScoreLabel.text = String.init(repeating: "❤️", count: myScore)
        opponentScoreLabel.text = String.init(repeating: "❤️", count: opponentScore)
    }
    
    @IBAction func myScoreReduceButtonClicked() {
        myScore = myScore > 0 ? myScore - 1 : 0
        myScoreLabel.text = String.init(repeating: "❤️", count: myScore)
    }
    
    @IBAction func opponentScoreReduceButtonClicked() {
        opponentScore = opponentScore > 0 ? opponentScore - 1 : 0
        opponentScoreLabel.text = String.init(repeating: "❤️", count: opponentScore)
    }
    
    @IBAction func goResultButtonClicked() {
        let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "GameResultViewController") as! GameResultViewController
        resultVC.myScore = myScore
        resultVC.opponentScore = opponentScore
        self.navigationController?.pushViewController(resultVC, animated: true)
    }

}
