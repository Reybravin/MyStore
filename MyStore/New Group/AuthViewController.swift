//
//  AuthViewController.swift
//  SlideOutNavigation
//
//  Created by Sergiy Sachuk on 4/3/18.
//  Copyright © 2018 James Frost. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextField.delegate = self
        passwordTextField.delegate = self
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: AUTH_TO_REGISTER, sender: self)
    }
    @IBAction func facebookBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: AUTH_TO_REGISTER, sender: self)
    }
    
}
