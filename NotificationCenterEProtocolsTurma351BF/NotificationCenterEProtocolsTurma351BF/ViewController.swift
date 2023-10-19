//
//  ViewController.swift
//  NotificationCenterEProtocolsTurma351BF
//
//  Created by Felipe Miranda Santos on 15/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonNavegation: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    @IBAction func tappedShowScreen02(_ sender: UIButton) {
        let screen02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
//        screen02?.modalPresentationStyle = .fullScreen
//        present(screen02 ?? UIViewController(), animated: true)
        
        navigationController?.pushViewController(screen02 ?? UIViewController(), animated: true)
    }
    
    func configElements() {
        logoImageView.image = UIImage(named: "logo_apple")
        textLabel.text = "Label"
        buttonNavegation.setTitle("Clique aqui", for: .normal)
        buttonNavegation.setTitleColor(UIColor.black, for: .normal)
        buttonNavegation.backgroundColor = UIColor.white
        buttonNavegation.center = self.view.center
        self.view.backgroundColor = UIColor.green
        
    }
    


}

