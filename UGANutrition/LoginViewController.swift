//
//  LoginViewController.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 5/29/17.
//  Copyright © 2017 Lakshay Sharma. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapSignIn(_ sender: UIButton) {
        let email = self.email.text
        let password = self.password.text
        Auth.auth().signIn(withEmail: email!, password: password!, completion: {
        (user, error) in
            guard let _ = user else {
                if let error = error {
                    if let error_code = AuthErrorCode(rawValue: error._code) {
                        switch(error_code) {
                        case .userNotFound:
                            self.showAlert("User Not Found. Try Registering Your Account")
                        case .wrongPassword:
                            self.showAlert("Incorrect Username/Password")
                        default:
                            self.showAlert("Uknown Error. Please Contact lakshay35@gmail.com")
                        }
                    }
                    return
                }
                assertionFailure("user and error are nil")
                return
            }
            self.signIn()
        })
    }
    
    
    @IBAction func didRequestPasswordReset(_ sender: UIButton) {
        let alert = UIAlertController(title: "UGA Nutrtition", message: "Enter Email ID", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) {(action) in
            let userInput = alert.textFields![0].text
            if(userInput!.isEmpty) {
                return
            }
            Auth.auth().sendPasswordReset(withEmail: userInput!, completion: {(error) in
                if let error = error {
                    if let error_code = AuthErrorCode(rawValue: error._code) {
                        switch(error_code) {
                        case .userNotFound:
                            DispatchQueue.main.async {
                                self.showAlert("User not found. Try registering your account")
                            }
                        default:
                            DispatchQueue.main.async {
                                self.showAlert("Error: \(error.localizedDescription)")
                            }
                        }
                    }
                    return
                } else {
                    DispatchQueue.main.async {
                        self.showAlert("You'll receive an email shortly to reset your password.")
                    }
                }
            })
        }
        alert.addTextField(configurationHandler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    */

    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "UGA Nutrition", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func signIn() {
        performSegue(withIdentifier: "SignInFromLogin", sender: nil)
    }

}
