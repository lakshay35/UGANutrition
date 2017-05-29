//
//  SignUpViewController.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 5/29/17.
//  Copyright © 2017 Lakshay Sharma. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapCreateAccount(_ sender: UIButton) {
        let fname = self.fname.text
        let lname = self.lname.text
        let email = self.email.text
        let password = self.password.text
        
        Auth.auth().createUser(withEmail: email!, password: password!, completion: { (user, error) in
            if let error = error {
                if let error_code = AuthErrorCode(rawValue: error._code) {
                    switch(error_code) {
                    case .emailAlreadyInUse:
                        self.showAlert("This email is already in use. Please register account with new email.")
                    case .invalidEmail:
                        self.showAlert("This email is invalid. Please use a valid email id.")
                    default:
                        self.showAlert("Error: \(error.localizedDescription)")
                    }
                }
                return
            }
            self.signIn()
        })
    }
    
    @IBAction func didTapLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "UGA Nutrition", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }


    func signIn() {
        performSegue(withIdentifier: "SignInFromSignUp", sender: nil)
    }


}
