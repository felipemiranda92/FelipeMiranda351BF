//
//  ViewController.swift
//  Desafio5Turma351BF
//
//  Created by Felipe Miranda Santos on 17/09/23.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tappedShowRegister(_ sender: UIButton) {
        let registerScreen = UIStoryboard(name: "RegisterViewController", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController
        
        navigationController?.pushViewController(registerScreen ?? UIViewController(), animated: true)
        
    }
    

}

