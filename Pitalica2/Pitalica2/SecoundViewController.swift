//
//  SecoundViewController.swift
//  Pitalica2
//
//  Created by Edin Vejzagic on 22/4/20.
//  Copyright © 2020 Edin Vejzagic. All rights reserved.
//

import UIKit

protocol CanRecive {
    func dataRecived(data: String)
    
}

class SecoundViewController: UIViewController {

    var delegate : CanRecive?
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label.text = data
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataRecived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    

}
