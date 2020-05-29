//
//  ViewController.swift
//  Dicee
//
//  Created by Edin Vejzagic on 7/2/20.
//  Copyright © 2020 Edin Vejzagic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var RandomDiceeIndex1 : Int = 0
    var RandomDiceeIndex2 : Int = 0
    
    var diceArrey = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DiceHapen()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        DiceHapen()
        
    }
    func DiceHapen(){
    RandomDiceeIndex1 = Int(arc4random_uniform(6))
    RandomDiceeIndex2 = Int(arc4random_uniform(6))
    
    
    diceImageView1.image = UIImage(named: diceArrey[RandomDiceeIndex1])
    diceImageView2.image = UIImage(named: diceArrey[RandomDiceeIndex2])
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
       DiceHapen()
       
        
    }

    
    
}

