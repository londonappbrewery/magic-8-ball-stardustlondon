//
//  ViewController.swift
//  Magic 8 Ball -
//
//  Created by Negin Djafari on 12/01/2018.
//  Copyright © 2018 Negin Djafari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
var randomBallNumber : Int = 0
    
@IBOutlet weak var imageView: UIImageView!
    
override func viewDidLoad() {
        
randomBallNumber = Int(arc4random_uniform(5))

imageView.image = UIImage(named: ballArray[randomBallNumber])

super.viewDidLoad()

// Do any additional setup after loading the view, typically from a nib.
    }

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
    }
    
@IBAction func askButtonPressed(_ sender: UIButton){ newBallImage()
    }
func newBallImage (){
randomBallNumber = Int(arc4random_uniform(5))
imageView.image = UIImage(named: ballArray[randomBallNumber])}
override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { newBallImage()
    }

}

