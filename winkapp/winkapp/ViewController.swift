//
//  ViewController.swift
//  winkapp
//
//  Created by Austin Harshberger on 4/20/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var person1: UILabel!

    @IBOutlet weak var person2: UILabel!
    
    @IBOutlet weak var person1incrementorview: UILabel!
    
    @IBOutlet weak var person2incrementorview: UILabel!
    
    var incrementorp1 = 0
    var incrementorp2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func person1increment(_ sender: Any) {
    
        let str = String(incrementorp1)
        incrementorp1 = incrementorp1 + 1
        person1incrementorview.text = str
    }

    @IBAction func person2increment(_ sender: Any) {
    }
    
    @IBAction func person1reset(_ sender: Any) {
    }
    
    @IBAction func person2reset(_ sender: Any) {
    }
    
    @IBAction func person1namechange(_ sender: Any) {
    }
    
    @IBAction func person2namechange(_ sender: Any) {
    }
}

