//
//  ViewController.swift
//  DesafioAulaDelegate
//
//  Created by Felipe Miranda Santos on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var adressTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElement()
    }

    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
    
    func configElement() {
        nameTextField.placeholder = "Digite seu nome: "
        adressTextField.placeholder = "Digite de endereço: "
        passwordTextField.placeholder = "Digite sua senha: "
        registerButton.setTitle("Cadastrar", for: .normal)
        
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        
        registerButton.isEnabled = false
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
        }
        
        if nameTextField.hasText && adressTextField.hasText && passwordTextField.hasText {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
        
    }
    

}


