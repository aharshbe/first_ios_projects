//
//  ViewController.swift
//  questionsgame
//
//  Created by Austin Harshberger on 6/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var imageview: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        imageview.isHidden = true;
        self.imageview.image = UIImage(named:"")
        self.imageview.image = #imageLiteral(resourceName: "versailles dragonfly incident")
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    
    }

    @IBAction func showImage(_ sender: Any) {
        self.imageview.isHidden = false;
    }

}

