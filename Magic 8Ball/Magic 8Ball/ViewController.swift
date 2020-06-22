//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Edin Vejzagic on 11/2/20.
//  Copyright © 2020 Edin Vejzagic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballAray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    var randomBallNumb : Int = 0
    
    func seenImage(){
        randomBallNumb = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballAray[randomBallNumb])
    }

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        seenImage()
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        seenImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        seenImage()
    }
     
  


}

