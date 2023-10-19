//
//  ViewController.swift
//  Desafio Ligações
//
//  Created by Felipe Miranda Santos on 05/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var nameButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

    @IBAction func nameButton(_ sender: UIButton) {
        let name = nameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        
        if !name.isEmpty && !lastName.isEmpty {
            nameLabel.text = "\(name) \(lastName)"
        } else {
            nameLabel.text = "Informe todos os campos"
        }
        
        
        
    }
    
    func configElements() {
        nameButton.setTitle("Nome Completo", for: .normal)
        nameLabel.text = ""
        nameTextField.placeholder = "Digite seu nome"
        lastNameTextField.placeholder = "Digite seu sobrenome"
    }

    
    
    
}

