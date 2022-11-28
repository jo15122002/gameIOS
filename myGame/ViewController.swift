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
    @IBOutlet weak var rightWall: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 1.0/20.0, repeats: true) { t in
            
            var dirX = 1.0
            var dirY = -1.0
            //Code executé 20x/sec
            self.ball.center.x += dirX
            self.ball.center.y += dirY
        
            if(self.playerTwo.frame.contains(self.ball.center)){
                dirY = 1.0
            }
            
            if(self.rightWall.frame.contains(self.ball.center)){
                dirX *= -1.0
            }
        }
    }
    @IBAction func rightClicked(_ sender: Any) {
        self.playerTwo.center.x += 1
    }
    @IBAction func leftClicked(_ sender: Any) {
        self.playerTwo.center.x += -1
    }
    

}

