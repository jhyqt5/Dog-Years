//
//  ViewController.swift
//  Dog Years
//
//  Created by Daniel Huang on 6/8/16.
//  Copyright © 2016 Daniel Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogHumanYears: UITextField!
    @IBOutlet weak var dogDogYears: UILabel!
    
    @IBAction func converToDogYears(sender: UIButton) {
        if dogHumanYears == "" {
            print("please enter something")
        } else {
            /*
             For the first two years, a dog year is equal to 10.5 human years. After that, each dog year equals 4 human
             years.
            
             This calculation is based on studies that indicate dogs, except maybe larger breeds, develop more quickly in the
             first two years of life.
            */
            
            //convert input to integer.
            let dogAge: Int
            let humanAge = Int(dogHumanYears.text!)
            
            if humanAge > 2 {
                //calculate age for dogs older than two
                dogAge = 20 + (humanAge! - 2) * 4
                dogDogYears.text = "\(dogAge) yo"
            } else if humanAge <= 2 {
                //calculate age for doge younger than two
                dogAge = humanAge! * 10
                dogDogYears.text = "\(dogAge) yo"
            }
        }
    }

}

