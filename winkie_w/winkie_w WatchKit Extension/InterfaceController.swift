//
//  InterfaceController.swift
//  winkie_w WatchKit Extension
//
//  Created by Austin Harshberger on 4/20/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var incrementor1 = 0
    var incrementor2 = 0
    
    @IBOutlet var person1: WKInterfaceLabel!
    @IBOutlet var person1incrementorview: WKInterfaceLabel!

    @IBOutlet var person2: WKInterfaceLabel!
    @IBOutlet var person2incrementorview: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        
        
        //pref 1 (incrementor incrementor person 1)
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            person1incrementorview.setText(strIn1sharedprefs)
            incrementor1 = currentLevel
        }
        //pref 2 (incrementor person 2)
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        if preferences2.object(forKey: currentLevelKey2) == nil {
            //  Doesn't exist
        } else {
            let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
            let strIn2sharedprefs = String(currentLevel2)
            person2incrementorview.setText(strIn2sharedprefs)
            incrementor2 = currentLevel2
            
            
        }
        //pref 3 (person 1 name)
        
        let userName = UserDefaults.standard.string(forKey: "username")
        person1.setText(userName)
        if person1.isEqual("") || person1.isEqual(" "){
            person1.setText("Person 1")
        }
          //pref 3 (person 1 name)
        let userName2 = UserDefaults.standard.string(forKey: "username2")
        person2.setText(userName2)
        if person2.isEqual("") || person2.isEqual(" "){
            person2.setText("Person 2")
        }


    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func longpressp1(_ sender: Any) {
    self.presentTextInputController(withSuggestions: ["Frank","Austin"], allowedInputMode: WKTextInputMode.plain,
                                                       completion:{(results) -> Void in
                                                        let aResult = results?[0] as? String
                                                        self.person1.setText(aResult)
                                                         UserDefaults.standard.set(aResult, forKey: "username")
        })
    }
    
    @IBAction func longpressp2(_ sender: Any) {
        self.presentTextInputController(withSuggestions: ["Frank","Austin"], allowedInputMode: WKTextInputMode.plain,
                                        completion:{(results) -> Void in
                                            let aResult = results?[0] as? String
                                            self.person2.setText(aResult)
                                            UserDefaults.standard.set(aResult, forKey: "username2")
        })
    }
    
    @IBAction func person1incrementoradd() {
        incrementor1 = incrementor1 + 1
        let stringperson1incrementor = String(incrementor1)
        person1incrementorview.setText(stringperson1incrementor)
        let preferences = UserDefaults.standard
        let currentLevel = incrementor1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()

    }
    @IBAction func person1deincrementorminus() {
        incrementor1 = incrementor1 - 1
        let stringperson1incrementor = String(incrementor1)
        person1incrementorview.setText(stringperson1incrementor)
        let preferences = UserDefaults.standard
        let currentLevel = incrementor1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
    }
    
    @IBAction func person2incrementorplus() {
        incrementor2 = incrementor2 + 1
        let stringperson2incrementor = String(incrementor2)
        person2incrementorview.setText(stringperson2incrementor)
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementor2
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }
    
    @IBAction func person2deincrementorminus() {
        incrementor2 = incrementor2 - 1
        let stringperson2incrementor = String(incrementor2)
        person2incrementorview.setText(stringperson2incrementor)
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementor2
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }
    
    
    @IBAction func longpressp1incrementor(_ sender: Any) {
        incrementor1 = 0
       let stringperson1incrementor = String(incrementor1)
        person1incrementorview.setText(stringperson1incrementor)
        let preferences = UserDefaults.standard
        let currentLevel = incrementor1
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
    }
    
    @IBAction func longpressp2incrementor(_ sender: Any) {
        incrementor2 = 0
        let stringperson2incrementor = String(incrementor2)
        person2incrementorview.setText(stringperson2incrementor)
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementor2
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }
    
    @IBAction func resetrest(_ sender: Any) {
        person1.setText("Person 1")
        person2.setText("Person 2")
    }
}
