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
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func clickingAddP1() {
        
        incrementor1 = incrementor1 + 1
        let stringperson1incrementor = String(incrementor1)
        person1.setText(stringperson1incrementor)
       
    }
    
    @IBAction func clickingSubP1() {
        incrementor1 = incrementor1 - 1
        let stringperson1incrementor = String(incrementor1)
        person1incrementorview.setText(stringperson1incrementor)
    }
    
    @IBAction func clickingAddP2() {
        incrementor2 = incrementor2 + 1
        let stringperson2incrementor = String(incrementor2)
        person2incrementorview.setText(stringperson2incrementor)
    }
    
    @IBAction func clickingSubP2() {
        incrementor2 = incrementor2 + 1
        let stringperson2incrementor = String(incrementor2)
        person2.setText(stringperson2incrementor)
    }
    
    @IBAction func longpressp1(_ sender: Any) {
        person1.setText("Austin")
    }
    
    @IBAction func longpressp2(_ sender: Any) {
        person2.setText("Bryan")
    }
    
}
