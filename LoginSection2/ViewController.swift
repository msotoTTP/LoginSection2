//
//  ViewController.swift
//  LoginSection2
//
//  Created by Mathew Soto on 5/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let senderButton = sender as? UIButton else {return}
        
        switch senderButton {
        case forgotUsernameButton:
            segue.destination.navigationItem.title = "Forgot Username"
        case forgotPasswordButton:
            segue.destination.navigationItem.title = "Forgot Password"
        default:
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }

    @IBAction func loginPressed(_ sender: Any) {
        guard let username = usernameTextField.text, let password = passwordTextField.text else {return}
        guard !username.isEmpty && !password.isEmpty else {return}
        
        performSegue(withIdentifier: "LoginSegue", sender: sender)
    }
    
}

