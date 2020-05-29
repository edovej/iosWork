//
//  ViewController.swift
//  AudiKey
//
//  Created by Edin Vejzagic on 20/3/20.
//  Copyright © 2020 Edin Vejzagic & VARAPP company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var  Message = ""
    var counter = 30
    var audiKeyNum = "339221"
   // var yourKeyId = 339221
    var name = ""
    
    
    @IBOutlet weak var keyInsertField: UITextField!
    
    
    
    @IBOutlet weak var userTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextView.delegate = self as? UITextViewDelegate
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: counter, repeats: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        keyInsertField.resignFirstResponder()
    }

    
    @IBAction func startUpPresseed(_ sender: Any) {
        name = "Edin"
        if ((keyInsertField.text! as NSString) as String) ==  audiKeyNum{
            
             userTextView.text = "Your car is strted up Welcome to your e-tron Mr. \(name)"
        } else {
            userTextView.text = "YOUR KEY IGNIITION ID IS INCORRECT PLESASE CHECK YOUR ID"
        }
            
           
        
        
        
    }
    
    
    @IBAction func folowMePressed(_ sender: Any) {
        
        if (sender as AnyObject).tag == 2{
            Message = "FOLOW ME HOME FOR NEXT 30s \n \(counter)s "
            userTextView.text = Message
        }
        
    }
    
    @IBAction func windowDownPressed(_ sender: Any) {
        Message = "Windows are open"
        userTextView.text = Message
        
        
    }
    
    @IBAction func windowUpPressed(_ sender: Any) {
        Message = "Windows are closed"
        userTextView.text = Message
    }
    
    @IBAction func shutDownPressed(_ sender: Any) {
        
        Message = "Your Car is off and lock"
        userTextView.text = Message
    }
    
    @objc func updateCounter() {
           //example functionality
           if counter > 0 {
               
               counter -= 1
               
               if counter == 0 {
                   counter = 30
               }
           }
       }
    
}

extension ViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
      return true
    }
    
}

