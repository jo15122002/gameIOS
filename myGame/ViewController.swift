//
//  ViewController.swift
//  myGame
//
//  Created by Digital on 28/11/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerTwo: UIView!
    @IBOutlet weak var playerOne: UIView!
    @IBOutlet weak var ball: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 1.0/20.0, repeats: true) { t in
            //Code executé 20x/sec
        }
    }
    @IBAction func rightClicked(_ sender: Any) {
        self.playerTwo.center.x += 1
    }
    @IBAction func leftClicked(_ sender: Any) {
        self.playerTwo.center.x += -1
    }
    

}

