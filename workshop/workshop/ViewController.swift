//
//  ViewController.swift
//  workshop
//
//  Created by Tommy on 03/09/2016.
//  Copyright © 2016 tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func updateName(sender: AnyObject) {
        myLabel.text=textField.text;
        
        //meaning become the first focus of the App. So keyboard will hide
        textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "Hello Tommy"
    }


}

