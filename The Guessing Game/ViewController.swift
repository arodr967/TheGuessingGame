//
//  ViewController.swift
//  The Guessing Game
//
//  Created by Alicia Rodriguez on 9/24/15.
//  Copyright © 2015 Alicia Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet var input_TextField: UITextField!

    @IBOutlet var answer_Label: UILabel!
    
    @IBAction func submit_Button(sender: AnyObject)
    {
        //Generate a random number from 0 through N-1
        var randomNumber:Int = Int(arc4random_uniform(6))
        
        let userInput = Int (input_TextField.text!)!
        
        if (userInput == randomNumber)
        {
            answer_Label.text = "You're right!"
        } else {
            answer_Label.text = "You're wrong!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

