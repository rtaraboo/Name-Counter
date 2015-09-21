//
//  ViewController.swift
//  Name Counter
//
//  Created by Rosario Tarabocchia on 9/21/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtTotalCharacters: UILabel!
    
    var nameData = ""
    
    
    @IBAction func btnCalculate(sender: UIButton) {
        
        calculate()
        
    }
    
    
    @IBAction func btnClear(sender: UIButton) {
        
        clear()
        
    }
    
    
    @IBAction func txtNameACTION(sender: UITextField) {
        
        
    }
    
    
    func calculate(){
        
        nameData = txtName.text!
        
        
        printCharaters()
        
        hideKeyboard()
        
        
    }
    
    func clear() {
        
        txtName.text = ""
        txtTotalCharacters.text = "0"
        
        hideKeyboard()
        
    }
    
    func printCharaters(){
        
        var nameArray = Array(nameData.characters)
        
     txtTotalCharacters.text = "\(nameArray.count)"
        
        
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
    func hideKeyboard(){
        
    txtName.resignFirstResponder()
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

