//
//  ViewController.swift
//  UiTextfield
//
//  Created by D7703_26 on 2018. 3. 22..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBAction func button(_ sender: Any) {
        hello.text = "쟌넨~ " + textField.text!
        textField.text = ""
        
        textField.resignFirstResponder()
        

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }

}

