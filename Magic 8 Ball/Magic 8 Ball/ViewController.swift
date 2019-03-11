//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anand on 2/28/19.
//  Copyright © 2019 Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
//        randomBallNumber = Int(arc4random_uniform(5))
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

