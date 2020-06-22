//
//  ViewController.swift
//  Pitalica2
//
//  Created by Edin Vejzagic on 22/4/20.
//  Copyright © 2020 Edin Vejzagic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanRecive {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards"{
            let secoundVC = segue.destination as! SecoundViewController
            
            secoundVC.data = textField.text!
            secoundVC.delegate = self
            
            
        }
    }
    
    
    func dataRecived(data: String) {
        label.text = data
    }
    
}

