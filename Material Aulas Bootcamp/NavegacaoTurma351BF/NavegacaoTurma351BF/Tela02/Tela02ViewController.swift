//
//  Tela02ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Felipe Miranda Santos on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
//        dismiss(animated: true) // Usamos o dismiss para voltar uma tela sendo ela uma modal
        
        navigationController?.popViewController(animated: true)  // Usamos esse método para voltar quando é um navigation
        
    }
    
    @IBAction func tappedShowScreen03(_ sender: UIButton) {
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
//        tela02?.modalPresentationStyle = .fullScreen
//        present(tela02 ?? UIViewController(), animated: true) // Mostrar uma tela sendo ela uma modal utilizamos o present
        
        navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
