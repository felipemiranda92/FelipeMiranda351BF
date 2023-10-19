//
//  ViewController.swift
//  TransicaoDeDados
//
//  Created by Felipe Miranda Santos on 19/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: String(describing: Tela02ViewController.self), bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "", lastName: self.lastNameTextField.text ?? "")
            
        }
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
        
    }
    
}

