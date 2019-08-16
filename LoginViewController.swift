//
//  LoginViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    var auth: Bool = false
    
    @IBAction func loginButton(_ sender: UIButton) {
        if(auth) {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Gesture recognizer para esconder o teclado
        username.delegate = self
        let tap1: UITapGestureRecognizer = UITapGestureRecognizer(target: self , action: #selector(LoginViewController.dismisskeyboard) )
        view.addGestureRecognizer(tap1)
        password.delegate = self
        let tap2: UITapGestureRecognizer = UITapGestureRecognizer(target: self , action: #selector(LoginViewController.dismisskeyboard) )
        view.addGestureRecognizer(tap2)
    }
    //O dismiss do teclado
    func dismisskeyboard () {
        username.resignFirstResponder()
        password.resignFirstResponder()
        view.endEditing(true)
    }
    
    //Mock autenticacao
    func authenticate(username: String, password: String) {
        if (username != "" && password != "") {
            auth = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
