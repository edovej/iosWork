//
//  ViewController.swift
//  CircleArea
//
//  Created by Edin Vejzagic on 6/5/20.
//  Copyright by varapp © 2020 Edin Vejzagic. All rights reserved.
//



import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    let Pi = 3.14
  
    
  
    
   
    
    @IBOutlet weak var enterValueField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enterValueField.endEditing(true)
       
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }
        else{
            textField.placeholder = "Type the value"
            return false
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        enterValueField.delegate = self
        
        
        
    }

    
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        enterValueField.endEditing(true)
        
        func areaCircle (r: Double) -> Double{
          let R = r*r*Pi
            return R
        }
        
         let rezult = areaCircle(r: Double(enterValueField.text!)!)
        
            resultLabel.text = String(rezult)
                print(areaCircle(r: Double(enterValueField.text!)!))
        
        
       
        
            
       
    }
    
    

}

