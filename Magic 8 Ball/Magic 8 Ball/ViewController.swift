//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gabriel Martinez on 2017-11-16.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.image = UIImage(named: "ball1")
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
        
    }
    
    func newBallImage(){
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        randomBallNumber = Int(arc4random_uniform(5))
        
    }
}

