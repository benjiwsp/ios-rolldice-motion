//
//  ViewController.swift
//  Dicee
//
//  Created by Siu Pong Wong on 5/11/2018.
//  Copyright © 2018 Benji Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    
    let diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImage()
        }
    
    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()  
    }
}

