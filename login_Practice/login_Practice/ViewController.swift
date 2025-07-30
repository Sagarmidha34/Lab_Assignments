//
//  ViewController.swift
//  login_Practice
//
//  Created by Sagar Midha on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var forgetUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
       if sender == forgetUsernameButton {
           segue.destination.navigationItem.title = "Forget Username"
        }
        else if sender == forgetPasswordButton {
            segue.destination.navigationItem.title = "Forget Password"
        }
     
        else
        {
            segue.destination.navigationItem.title = usernameText.text
        }
    }
    
    @IBAction func forgetUsernameTapped(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
    }
    

    @IBAction func forgetPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
    }
}

