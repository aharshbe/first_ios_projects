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
    
    var incrementorp1 = 1
    var incrementorp2 = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let preferences = UserDefaults.standard
        
        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            person1incrementorview.text = strIn1sharedprefs
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func person1increment(_ sender: Any) {
    
        let strIn1 = String(incrementorp1)
        incrementorp1 = incrementorp1 + 1
        person1incrementorview.text = strIn1
        let preferences = UserDefaults.standard
        
        let currentLevel = incrementorp1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
    }

    @IBAction func person2increment(_ sender: Any) {
        
        let strIn2 = String(incrementorp2)
        incrementorp2 = incrementorp2 + 1
        person2incrementorview.text = strIn2
        
    }
    
    @IBAction func person1reset(_ sender: Any) {
        incrementorp1 = 1
        let strIn1reset = String(0)
        person1incrementorview.text = strIn1reset
        let alert = UIAlertController(title: "Hello...", message: "Person 1 winks reset!", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "Sounds good", style: UIAlertActionStyle.default)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }

    }
    
    @IBAction func person2reset(_ sender: Any) {
        incrementorp2 = 1
        let strIn2reset = String(0)
        person2incrementorview.text = strIn2reset
        let alert = UIAlertController(title: "Hello...", message: "Person 2 winks reset!", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "Sounds good", style: UIAlertActionStyle.default)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }

    }
    
    @IBAction func person1namechange(_ sender: Any) {
        
            //1. Create the alert controller.
            let alert = UIAlertController(title: "Hello...", message: "Enter name to change to", preferredStyle: .alert)
            
            //2. Add the text field. You can configure it however you need.
            alert.addTextField { (textField) in
                textField.placeholder = "enter name here"
            }
        
            
            // 3. Grab the value from the text field, and print it when the user clicks OK.
            alert.addAction(UIAlertAction(title: "Change", style: .default, handler: { [weak alert] (_) in
                let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
                self.person1.text = textField?.text!
            }))
            
            // 4. Present the alert.
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func person2namechange(_ sender: Any) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Hello...", message: "Enter name to change to", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "enter name here"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Change", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            self.person2.text = textField?.text!
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
}

