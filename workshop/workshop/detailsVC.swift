//
//  detailsVC.swift
//  workshop
//
//  Created by Tommy on 03/09/2016.
//  Copyright © 2016 tommy. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    
    var myString: String?
    var myDescription: String?
    var indexOfButton: Int?

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        guard let string = myString else{
            return
        }
        myLabel.text = string
        
        
        guard let decribe = myDescription else{
            return
        }
        myText.text = decribe
        
        guard let imageTag = indexOfButton else {
            return
        }
        
        detailImage.image = UIImage(named: "\(imageTag)")        
    }
}
