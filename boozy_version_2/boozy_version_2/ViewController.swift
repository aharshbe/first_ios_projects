//
//  ViewController.swift
//  boozy_version_2
//
//  Created by Austin Harshberger on 4/27/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var sometext: UILabel!
    
    @IBOutlet var textgrab: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func textgrabaction(_ sender: UITextField) {
        let defaults = UserDefaults(suiteName: "group.austinsgroup.example")
        defaults?.set("It's really working", forKey: "alarmTime")
        defaults?.synchronize()
        sometext.text = textgrab.text
        textgrab.text = ""
        
    }
  
    
}

