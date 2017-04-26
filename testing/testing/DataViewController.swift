//
//  DataViewController.swift
//  testing
//
//  Created by Austin Harshberger on 4/26/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var titleedittext: UITextField!
    
    @IBOutlet weak var titlelable: UILabel!
    
    @IBOutlet weak var entryeditext: UITextField!
    
    @IBOutlet weak var bodyentry: UILabel!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }

    @IBAction func edittexttakingtext(_ sender: UITextField) {
        titlelable.text = titleedittext.text
    }

    @IBAction func edittexttakingtextentry(_ sender: UITextField) {
        bodyentry.text = entryeditext.text
    }
}

