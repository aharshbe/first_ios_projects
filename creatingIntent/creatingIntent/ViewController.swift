//
//  ViewController.swift
//  creatingIntent
//
//  Created by Austin Harshberger on 4/26/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickingNext(_ sender: Any) {
        performSegue(withIdentifier: "nextView", sender: self)

    }

}

