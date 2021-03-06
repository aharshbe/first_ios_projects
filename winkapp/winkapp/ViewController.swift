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
        
        //pref 1 (incrementor incrementor person 1)
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            person1incrementorview.text = strIn1sharedprefs
            incrementorp1 = currentLevel
        }
        //pref 2 (incrementor person 2)
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        if preferences2.object(forKey: currentLevelKey2) == nil {
            //  Doesn't exist
        } else {
            let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
            let strIn2sharedprefs = String(currentLevel2)
            person2incrementorview.text = strIn2sharedprefs
            incrementorp2 = currentLevel2
            
           
        }
        //pref 3 (person 1 name)
        
        let userName = UserDefaults.standard.string(forKey: "username")
        person1.text = userName
        
        
        //pref 4 (person 2 name)
        
        let userName2 = UserDefaults.standard.string(forKey: "username2")
        person2.text = userName2


      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func person1increment(_ sender: Any) {
    
        incrementorp1 = incrementorp1 + 1
        let strIn1 = String(incrementorp1)
        person1incrementorview.text = strIn1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorp1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
    }

    @IBAction func person2increment(_ sender: Any) {
        
        incrementorp2 = incrementorp2 + 1
        let strIn2 = String(incrementorp2)
        person2incrementorview.text = strIn2
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementorp2
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
        
    }
    
    @IBAction func person1reset(_ sender: Any) {
      
        
        let alert = UIAlertController(title: "Hello...", message: "Are you sure you want to reset \(person1.text!)'s winks?", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "Cancel", style: .cancel)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }
        alert.addAction(UIAlertAction(title: "Yes, please", style: UIAlertActionStyle.default, handler: { (action: UIAlertAction!) in
            
            self.incrementorp1 = 0
            let strIn1reset = String(0)
            let preferences = UserDefaults.standard
            let currentLevel = self.incrementorp1
            let currentLevelKey = "currentLevel"
            preferences.set(currentLevel, forKey: currentLevelKey)
            preferences.synchronize()
            self.person1incrementorview.text = strIn1reset
        }))

    }
    
    @IBAction func person2reset(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hello...", message: "Are you sure you want to reset \(person2.text!)'s winks?", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "Cancel", style: .cancel)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }
        alert.addAction(UIAlertAction(title: "Yes, please", style: UIAlertActionStyle.default, handler: { (action: UIAlertAction!) in
            
            self.incrementorp2 = 0
            let strIn2reset = String(0)
            let preferences2 = UserDefaults.standard
            let currentLevel2 = self.incrementorp2
            let currentLevelKey2 = "currentLevel2"
            preferences2.set(currentLevel2, forKey: currentLevelKey2)
            preferences2.synchronize()
            self.person2incrementorview.text = strIn2reset
        }))

    }
    
    @IBAction func person1namechange(_ sender: Any) {
        
            //1. Create the alert controller.
            let alert = UIAlertController(title: "Hello...", message: "Are you sure you'd like to change the player 1's name?", preferredStyle: .alert)
            
            //2. Add the text field. You can configure it however you need.
            alert.addTextField { (textField) in
                textField.placeholder = "enter name here"
            }
        
            
            // 3. Grab the value from the text field, and print it when the user clicks OK.
            alert.addAction(UIAlertAction(title: "Change", style: .default, handler: { [weak alert] (_) in
                let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
                self.person1.text = textField?.text!
                UserDefaults.standard.set(textField?.text!, forKey: "username")

            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action: UIAlertAction!) in
                
            }))
        
            // 4. Present the alert.
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func person2namechange(_ sender: Any) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Hello...", message: "Are you sure you'd like to change player 2's name?", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "enter name here"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Change", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            self.person2.text = textField?.text!
            UserDefaults.standard.set(textField?.text!, forKey: "username2")
        
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action: UIAlertAction!) in
            
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func person1deincrement(_ sender: UIButton) {
        incrementorp1 = incrementorp1 - 1
        let strIn1 = String(incrementorp1)
        person1incrementorview.text = strIn1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorp1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()

    }
    
    
    @IBAction func person2deincrement(_ sender: UIButton) {
        incrementorp2 = incrementorp2 - 1
        let strIn2 = String(incrementorp2)
        person2incrementorview.text = strIn2
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementorp2
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }
    
    
    
    @IBAction func movingtonext(_ sender: UIButton) {
        


    }
    
    
}

