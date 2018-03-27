//
//  ViewController.swift
//  UiTextfield
//
//  Created by D7703_26 on 2018. 3. 22..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var textField: UITextField!
    //UITextFieldDelegate 객체와 viewController 객체를 연결
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }
 
    @IBAction func button(_ sender: Any) {
        hello.text = "보이루~ " + textField.text!
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
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //view.backgroundColor = UIColor.red
        textField.resignFirstResponder()
        return true
    }

}

