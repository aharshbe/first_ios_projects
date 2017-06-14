//
//  ViewController.swift
//  calebfunapptest
//
//  Created by Austin Harshberger on 5/30/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textviewname: UILabel!
    @IBOutlet weak var textedit: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func changingtextbutton(_ sender: Any) {
        textviewname.text = textedit.text
    }
   

}

