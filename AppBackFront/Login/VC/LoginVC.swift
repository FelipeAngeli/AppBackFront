//
//  LoginVC.swift
//  AppBackFront
//
//  Created by Felipe  on 28/02/23.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreem?
    var auth: Auth?
    
    override func loadView() {
        loginScreen = LoginScreem()
        view =  loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyBoard()
        auth = Auth.auth()
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        isEnableLoginButton(false)
        
    }
    
    
    
    func validateTextField() {
        if (loginScreen?.emailTextField.text ?? "").isValid(validType: .email) &&
            (loginScreen?.passwordTextField.text ?? "").isValid(validType: .password) {
            isEnableLoginButton(true)
        } else {
            isEnableLoginButton(false)
        }
    }
    
    func isEnableLoginButton(_ isEnabled: Bool) {
        if isEnabled {
            loginScreen?.loginButton.setTitleColor(.white, for: .normal)
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.subLoginImageView.alpha = 1
        } else {
            loginScreen?.loginButton.setTitleColor(.lightGray, for: .normal)
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.subLoginImageView.alpha = 0.4
        }
    }
    
}


extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        
        auth?.signIn(withEmail: loginScreen?.emailTextField.text ?? "", password: loginScreen?.passwordTextField.text ?? "", completion: {user, error in
            if error != nil {
                //deu ruim
                print(error?.localizedDescription ?? "")
            } else {
                //nao tem error
                print("Sucesso!")
            }
        } )
        
    }
    
}


extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty ?? false {
            textField.layer.borderWidth = 1.5
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            switch textField {
                case self.loginScreen?.emailTextField:
                    if (loginScreen?.emailTextField.text ?? "").isValid(validType: .email) {
                        loginScreen?.emailTextField.layer.borderWidth = 1
                        loginScreen?.emailTextField.layer.borderColor = UIColor.white.cgColor
                    } else {
                        loginScreen?.emailTextField.layer.borderWidth = 1.5
                        loginScreen?.emailTextField.layer.borderColor = UIColor.red.cgColor
                    }
                case self.loginScreen?.passwordTextField:
                    if (loginScreen?.passwordTextField.text ?? "").isValid(validType: .password) {
                        loginScreen?.passwordTextField.layer.borderWidth = 1
                        loginScreen?.passwordTextField.layer.borderColor = UIColor.white.cgColor
                    } else {
                        loginScreen?.passwordTextField.layer.borderWidth = 1.5
                        loginScreen?.passwordTextField.layer.borderColor = UIColor.red.cgColor
                    }
                default:
                    break
            }
        }
        validateTextField()
        
    }
    
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
