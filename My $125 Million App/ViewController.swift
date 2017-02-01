//
//  ViewController.swift
//  My $125 Million App
//
//  Created by Michael Barrett on 1/24/17.
//  Copyright © 2017 Michael Barrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var convertedValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
        
        if let miles = Double(textField.text!) {
            let km = miles * 1.6
            convertedValueLabel.text = "\(miles) miles = \(km) kilometers"
        } else {
            convertedValueLabel.text = ""
            
            let alertController = UIAlertController(title: "Entry Error", message: "Please enter a valid number. No commas, symbols, or other non-numeric characters", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
        
    }
 
}

