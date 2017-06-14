//
//  ViewController2.swift
//  questionsgame
//
//  Created by Austin Harshberger on 6/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    //Creating a global variable for the incremetor to change question
    var incrementorforquestions = 0
    //Creating a global variable for the incremetor to change answer
    var incrementorforanswers = 0
    //Creating a globla variable for the questions array
    var questionsStore: [String] = []
    //Creating a globla variable for the answers array
    var answerStore: [String] = []
    
    
   
    @IBOutlet weak var questionDisplay: UITextView!
    
    @IBOutlet weak var answerInput: UITextField!
    
    @IBOutlet weak var answerDisplay: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Adding questions to question array
        questionsStore.append("What is your favorite color?")
        questionsStore.append("What is your least favorite color?")
        questionsStore.append("What is your favorite animal?")
        
        //Display the initial question to the question label
        questionDisplay.text = questionsStore[incrementorforquestions]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Creating a button to change the question to the next in the array + adding their answer to the label to display it
    
    @IBAction func displayQuestion(_ sender: UIButton) {
        
        answerStore.append(answerInput.text!)
        
        answerDisplay.text = answerStore[incrementorforanswers]
        
        incrementorforanswers = incrementorforanswers + 1
        
        incrementorforquestions = incrementorforquestions + 1
        
         questionDisplay.text = questionsStore[incrementorforquestions]
        
        answerInput.text = ""
        
        let alertController = UIAlertController(title: "Hello, 🔮", message: "Help the tech-verse learn a new question?", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Learn", style: .default) { (_) in
            if let field = alertController.textFields![0] as? UITextField {
                // store your data
                self.questionsStore.append(field.text!)
                
                            } else {
                // user did not fill field
            }
        }
        
        let cancelAction = UIAlertAction(title: "Not now", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Question here"
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func teachquestionbutton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Hello, 🔮", message: "Help the tech-verse learn a new question?", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Learn", style: .default) { (_) in
            if let field = alertController.textFields![0] as? UITextField {
                // store your data
                self.questionsStore.append(field.text!)
                
            } else {
                // user did not fill field
            }
        }
        
        let cancelAction = UIAlertAction(title: "Not now", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Question here"
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)

    }
    
    
    
    
}
