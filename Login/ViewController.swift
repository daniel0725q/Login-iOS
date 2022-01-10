//
//  ViewController.swift
//  Login
//
//  Created by Daniel on 9/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "nextView", sender: sender)
    }
    
    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "nextView", sender: sender)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "nextView", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        } else {
            segue.destination.title = usernameTextField.text
        }
    }
}

