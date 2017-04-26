//
//  SecondViewController.swift
//  creatingIntent
//
//  Created by Austin Harshberger on 4/26/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class Second: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    
    @IBAction func clickingNext(_ sender: Any) {
        performSegue(withIdentifier: "main", sender: self)

    }
    

}
