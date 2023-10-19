//
//  ViewController.swift
//  TextFieldDelegate351BF
//
//  Created by Felipe Miranda Santos on 05/09/23.
//

import UIKit


// Toda nova tela herda de UIViewController
// UIViewController serve para controlar/observar todo o life cycle da tela.

// Ordem para tela:

// Ligações
// Variaveis / Constantes
// Construtores (init)
// Metodos de live cycle
// Demais metodos

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastFelipeLabel: UILabel!
    
    @IBOutlet weak var changeButton: UIButton!
    
    
    // o ciclo de vida 'viewDidLoad' ele é disparado automaticamente quando a nossa tela é carregada já obtendo todas as informações sobre os elementos que o nosso CORPO(arquivo storyboard) contem.
       
       // Utilizamos o viewDidLoad para fazer oque?
       
       // Configurações iniciais da sua tela
       // Configurar elementos (Cor, fonte, texto, alinhamento, etc...)
       // Realizar chamadas da api iniciais para a tela
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        nameLabel.text = "Felipe"
    }

    
    // Ligações @IBAction sempre são utilizadas depois dos metodos de live cycle que servem para disparar como o proprio nome diz uma action.
    
    // Padrão de nomenclatura: (isso depende muito de projeto para projeto)
    // prefixo -> tapped
    // no meio coloque o nome do seu elemento de ação
    // no fim sempre o nome do seu elemento
    
    @IBAction func tappedChangeButton(_ sender: UIButton) {
        nameLabel.text = "Vinicius"
        lastFelipeLabel.text = "Santos"
    }
    
    func configElements() {
        nameLabel.text = "Felipe"
        lastFelipeLabel.text = "Miranda"
        changeButton.setTitle("Trocar os Nomes", for: .normal)
    }
    
}

