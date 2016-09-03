//
//  ViewController.swift
//  workshop
//
//  Created by Tommy on 03/09/2016.
//  Copyright © 2016 tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //test commit
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lastName: UITextField!
    
    
    @IBAction func combineName(sender: AnyObject) {
        
        guard let abc = textField.text else{
            return
        }
        myLabel.text = "My Name is: \(abc) \(lastName.text!)"
        //myLabel.text = "My Name is: \(textField.text!) \(lastName.text!)"
        print(myLabel.text)
        
    }
    
    @IBAction func mySlider(sender: AnyObject) {
        /*
         --To use this 2 line, need to change AnyObject to UISlider
         
        let currentValue = Int(sender.value)
        myLabel.text = String(currentValue)
        */
        
        let sliderValue = Int(slider.value)
        myLabel.text = "Value:  \(sliderValue)"
        
    }
    
    @IBAction func updateName(sender: AnyObject) {
        myLabel.text=textField.text;
        
        //meaning become the first focus of the App. So keyboard will hide
        textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Beginner"
        
        myLabel.text = "Hello Changed"
        textField.text = "HardCoded"
        lastName.text = "Name"
        
    }


}

