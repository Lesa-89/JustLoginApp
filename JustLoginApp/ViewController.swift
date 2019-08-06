//
//  ViewController.swift
//  JustLoginApp
//
//  Created by macbook on 06/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let trueLogin = "Vasiliy"
    let truePassword = "qwerty"
    
    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if login.text == trueLogin {
            if password.text == truePassword {
                performSegue(withIdentifier: "segue", sender: nil)
            }
        } else {
            showAlert(title: "Wrong login or password!", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotLoginPressed(_ sender: Any) {
        showAlert(title: "Forgot login?", message: "Your login is Vasiliy")
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        showAlert(title: "Forgot password?", message: "Your password is qwerty")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "changeSide" else { return }
        let resultVC = segue.destination as! SecondViewController
        resultVC.loginText = self.login.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwindMainScreen(segue: UIStoryboardSegue) {
        
    }
    
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.login.text = ""
            self.password.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
