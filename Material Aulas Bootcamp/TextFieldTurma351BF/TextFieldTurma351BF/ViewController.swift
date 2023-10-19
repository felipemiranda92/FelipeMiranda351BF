//
//  ViewController.swift
//  TextFieldTurma351BF
//
//  Created by Felipe Miranda Santos on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    
    
    func configElements() {
        emailTextField.placeholder = "Digite seu e-mail:"
        passwordTextField.placeholder = "Digite sua senha: "
        loginButton.setTitle("Login", for: .normal)
        emailTextField.keyboardType = .emailAddress
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        textField.layer.borderWidth = 0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn", textField.self)
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Botão login")
    }
    
    
}

