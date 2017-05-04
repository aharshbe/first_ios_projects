//
//  InterfaceController.swift
//  winkie_w_complication WatchKit Extension
//
//  Created by Austin Harshberger on 5/3/17.
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
        
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            person1incrementorview.setText(strIn1sharedprefs)
            incrementor1 = currentLevel
        }
        
        let userName = UserDefaults.standard.string(forKey: "username")
        
        if UserDefaults.standard.string(forKey: "username") == nil {
            person1.setText("🤷🏼‍♂️[long press!]")
           
        }else{
            person1.setText(userName! + "🤷🏼‍♂️")
            
        }
        //pref 3 (person 1 name)
        let userName2 = UserDefaults.standard.string(forKey: "username2")
        
        if UserDefaults.standard.string(forKey: "username2") == nil {
            person2.setText("💁🏼‍♂️[long press!]")
          
        }else{
            person2.setText(userName2! + "💁🏼‍♂️")
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
        self.presentTextInputController(withSuggestions: ["Bryan","Austin","Beatris"], allowedInputMode: WKTextInputMode.plain,
                                        completion:{(results) -> Void in
                                            let aResult = results?[0] as? String
                                            self.person1.setText(aResult! + "🤷🏼‍♂️")
                                            UserDefaults.standard.set(aResult, forKey: "username")
                                            if self.person1.isEqual(" "){
                                                self.person1.setText("🤷🏼‍♂️[long press!]")
                                            }
        })

    }
    
    @IBAction func longpressp2(_ sender: Any) {
        self.presentTextInputController(withSuggestions: ["Bryan","Austin","Ugla"], allowedInputMode: WKTextInputMode.plain,
                                        completion:{(results) -> Void in
                                            let aResult = results?[0] as? String
                                            self.person2.setText(aResult! + "💁🏼‍♂️")
                                            UserDefaults.standard.set(aResult, forKey: "username2")
                                            if self.person2.isEqual(" "){
                                                self.person2.setText("💁🏼‍♂️[long press!]")
                                                
                                            }
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
    
    @IBAction func needhelp() {
        person1.setText("🐣[long press!]")
        
        person2.setText("🐥[long press!]")
        
        
        let h0 = { print("ok")}
        
        let action1 = WKAlertAction(title: "Thannks.🤷🏼‍♂️", style: .default, handler:h0)
        let action3 = WKAlertAction(title: "Cancel", style: .cancel) {}
        
        presentAlert(withTitle: " ", message: "To change a player name, long press on the 🐣 or 🐥 then either draw or speak their name!💁🏼‍♂️", preferredStyle: .actionSheet, actions: [action1,action3])
    }
   
    
//    @IBAction func resetrest(_ sender: Any) {
//        person1.setText("🐣[long press!]")
//        
//        person2.setText("🐥[long press!]")
//        
//        
//        let h0 = { print("ok")}
//        
//        let action1 = WKAlertAction(title: "Thannks.🤷🏼‍♂️", style: .default, handler:h0)
//        let action3 = WKAlertAction(title: "Cancel", style: .cancel) {}
//        
//        presentAlert(withTitle: "", message: "To change a player name, long press on the 🐣 or 🐥 then either draw or speak their name!💁🏼‍♂️", preferredStyle: .actionSheet, actions: [action1,action3])
//    }
    
   
    @IBAction func viewsummary() {
        let h0 = { print("ok")}
        
        let action1 = WKAlertAction(title: "Thannks.🤷🏼‍♂️", style: .default, handler:h0)
       
        let userName = UserDefaults.standard.string(forKey: "username")
        let usernameperson1 = userName!
        let userName2 = UserDefaults.standard.string(forKey: "username2")
        let usernameperson2 = userName2!
        
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        let person1incre = preferences.integer(forKey: currentLevelKey)
  
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        let person2incre = preferences2.integer(forKey: currentLevelKey2)
        
        var phrase = " "
        
        if person1incre > person2incre {
            
             phrase = "\(usernameperson1) is winning! 💋" + " " + "\(usernameperson2), you better catch up!"
        
        } else if person2incre > person1incre {
            
            phrase = "\(usernameperson2) is winning! 🤙🏼" + " " + "\(usernameperson1), you better catch up!"
        
        }else if person1incre == person2incre {
            
            phrase = "\(usernameperson1) & \(usernameperson2) are tied! 👥"
        
        }
        
        
        presentAlert(withTitle: "👱🏼\(usernameperson1) vs. 👨🏽\(usernameperson2)", message: "\(phrase)", preferredStyle: .actionSheet, actions: [action1])
    }

    @IBAction func longpresssummary(_ sender: Any) {
        let h0 = { print("ok")}
        
        let action1 = WKAlertAction(title: "Thannks.🤷🏼‍♂️", style: .default, handler:h0)
        
        let userName = UserDefaults.standard.string(forKey: "username")
        let usernameperson1 = userName!
        let userName2 = UserDefaults.standard.string(forKey: "username2")
        let usernameperson2 = userName2!
        
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        let person1incre = preferences.integer(forKey: currentLevelKey)
        
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        let person2incre = preferences2.integer(forKey: currentLevelKey2)
        
        
        presentAlert(withTitle: "👱🏼\(usernameperson1) vs. 👨🏽\(usernameperson2)", message: "\(usernameperson1) has \(person1incre) winks and \(usernameperson2) has \(person2incre) winks!", preferredStyle: .actionSheet, actions: [action1])
    }

}
