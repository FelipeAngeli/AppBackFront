//
//  LoginVC.swift
//  AppBackFront
//
//  Created by Felipe  on 28/02/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreem?
    
    override func loadView() {
        loginScreen = LoginScreem()
        view =  loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    



}
