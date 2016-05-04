//
//  ViewController.swift
//  DogYearConverter
//
//  Created by Paul Hasfjord on 03.05.2016.
//  Copyright © 2016 Paul Hasfjord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearLabel: UILabel!
    
    @IBOutlet weak var humanYearsConverterTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converterButtonPressed(sender: UIButton) {
        
        
        let humanYearsFromTextField = Int(humanYearsConverterTextField.text! )
        
        if( humanYearsFromTextField == nil){
            dogYearLabel.textColor = UIColor.redColor()
            dogYearLabel.text = "Error, please insert a whole number!"
            
        }
        else
        {
            let yearConverter = 7
            dogYearLabel.textColor = UIColor.blackColor()
            dogYearLabel.hidden = false
            dogYearLabel.text = "\(humanYearsFromTextField)"
            
            dogYearLabel.text = "\(humanYearsFromTextField! ) dog years is: " + "\(humanYearsFromTextField! * yearConverter)" + " years in human years"
            
        }
       
        humanYearsConverterTextField.isFirstResponder()
        humanYearsConverterTextField.text = ""
        humanYearsConverterTextField.resignFirstResponder()
        
    }

}

