//
//  Tela01ViewController.swift
//  Desafio07Turma351BF
//
//  Created by Felipe Miranda Santos on 15/10/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var informationTextField: UITextField!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    @IBAction func tappedChooseButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
//        vc?.modalPresentationStyle = .fullScreen
//        present(vc ?? UIViewController(), animated: true)
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        NotificationCenter.default.post(name: .message, object: nil)
        
        vc?.textMessage = informationTextField.text ?? " "
        
    }
    
    func configElements() {
        chooseButton.setTitle("Clique aqui", for: .normal)
    }

}
