//
//  ViewController.swift
//  Dicee
//
//  Created by Alejandro Pena on 9/8/19.
//  Copyright © 2019 Alejandro Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    //outlet type, weak=connection, type of var(or let), name, obj type, idk '!'
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollButton(_ sender: UIButton) {
        updateDice()
    }
    
    func updateDice(){ // this is bc RollButton expects keypress
        randomDiceIndex1 = Int.random(in: 0 ... 5) // '...' is range
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]) //simply name of asset
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    //shake gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDice()
    }
}

