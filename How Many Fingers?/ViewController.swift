//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Jared Allen on 10/26/15.
//  Copyright © 2015 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        let randomNumber: String = String(arc4random_uniform(6))
        print(randomNumber)
        if numberTextField.text == "" {
            resultLabel.text = "Please make a guess!"
        }
        else if randomNumber == numberTextField.text {
            resultLabel.text = "You guessed right!"
        } else {
            resultLabel.text = "Wrong! It was a \(randomNumber)"
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

