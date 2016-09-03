//
//  imageVC.swift
//  workshop
//
//  Created by Tommy on 03/09/2016.
//  Copyright © 2016 tommy. All rights reserved.
//

import UIKit

class imageVC: UIViewController {

    
    var listOfFastfood = ["A&W", "Burger King", "Domino's", "KFC", "Wendy's", "McD", "Pizza Hut", "Subway"]
    
    var foodDescription = ["Fast Food A&W", "Fast Food Burger", "Fast Food Pizza", "Fast Food Chicken", "Fast Food Wendy", "Fast Food McD", "Fast Food pHutz", "Fast Food Subway"]
    
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var five: UILabel!
    @IBOutlet weak var six: UILabel!
    @IBOutlet weak var seven: UILabel!
    @IBOutlet weak var eight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "List of Fast Food"
        
        one.text = listOfFastfood[0]
        two.text = listOfFastfood[1]
        three.text = listOfFastfood[2]
        four.text = listOfFastfood[3]
        five.text = listOfFastfood[4]
        six.text = listOfFastfood[5]
        seven.text = listOfFastfood[6]
        eight.text = listOfFastfood[7]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonTapped(sender: AnyObject) {
        print(sender.tag)
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let tag = sender?.tag else{
            return
        }
        
        guard let dvc = segue.destinationViewController as? detailsVC else {
            return
        }
        
        dvc.myString = listOfFastfood[tag-1]
        dvc.myDescription = foodDescription[tag-1]
        dvc.indexOfButton = tag
    }
    
    
}
