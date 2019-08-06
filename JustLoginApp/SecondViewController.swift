//
//  SecondViewController.swift
//  JustLoginApp
//
//  Created by macbook on 06/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

    var loginText: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let loginText = loginText else { return }
        welcomeLabel.text = "Hello, \(loginText)! Welcome to the Light Side!"
    }
    
    @IBAction func backButton() {
    }
    


}
