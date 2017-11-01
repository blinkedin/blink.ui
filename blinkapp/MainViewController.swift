//
//  MainViewController.swift
//  blinkapp
//
//  Created by PilGwonKim on 2017. 10. 30..
//  Copyright © 2017년 PilGwonKim. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var spinnerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MAIN"
    }
    
    @IBAction func goGamingButtonClicked() {
        self.showSpinnerView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.hideSpinnerView()
            self.goGamingVC()
        })
    }
    
    func goGamingVC() {
        let gamingVC = self.storyboard?.instantiateViewController(withIdentifier: "GamingViewController") as! GamingViewController
        self.navigationController?.pushViewController(gamingVC, animated: true)
    }
    
    func initSpinnerView() {
        self.spinnerView = UIView(frame: CGRect(x: 0, y: 0, width: 250, height: 150))
        self.spinnerView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        self.spinnerView.layer.cornerRadius = 5
        self.spinnerView.layer.masksToBounds = true
        
        let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: self.spinnerView.frame.size.width, height: self.spinnerView.frame.size.height))
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        self.spinnerView.addSubview(backgroundView)
        
        let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityIndicatorView.startAnimating()
        activityIndicatorView.center = CGPoint(x: self.spinnerView.frame.size.width / 2, y: self.spinnerView.frame.size.height / 2)
        self.spinnerView.addSubview(activityIndicatorView)
    }
    
    func showSpinnerView() {
        if self.spinnerView == nil {
            self.initSpinnerView()
        }
        
        self.view.addSubview(self.spinnerView)
    }
    
    func hideSpinnerView() {
        self.spinnerView.removeFromSuperview()
    }

}
