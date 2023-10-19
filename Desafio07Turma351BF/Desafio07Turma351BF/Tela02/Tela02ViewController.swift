//
//  Tela02ViewController.swift
//  Desafio07Turma351BF
//
//  Created by Felipe Miranda Santos on 15/10/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    @IBOutlet weak var informationLabel: UILabel!
    
    var textMessage: String = " "

    override func viewDidLoad() {
        super.viewDidLoad()
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(transferMessage), name: .message, object: nil)
    }
    
    @objc func transferMessage(_ notification: NSNotification) {
        informationLabel.text = textMessage
    }

}

