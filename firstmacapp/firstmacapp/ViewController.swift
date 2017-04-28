//
//  ViewController.swift
//  firstmacapp
//
//  Created by Austin Harshberger on 4/27/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var lableoutput: NSTextField!

    @IBOutlet weak var edittext: NSTextField!
    
    
   

    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
       
        
    
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func button(_ sender: NSButton) {
        lableoutput.stringValue = "Hello, " + edittext.stringValue + "!"
        
    }

    @IBAction func edittextaction(_ sender: Any) {
        lableoutput.stringValue = edittext.stringValue
    }
}
  


