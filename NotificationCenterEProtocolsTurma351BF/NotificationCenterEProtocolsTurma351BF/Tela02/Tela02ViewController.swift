//
//  Tela02ViewController.swift
//  NotificationCenterEProtocolsTurma351BF
//
//  Created by Felipe Miranda Santos on 15/10/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var macbookProButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements() {
//        macbookProButton.setImage(UIImage(named: "macbook_pro"), for: .normal)
//        macbookProButton.imageView?.contentMode = .scaleAspectFit
//        imacButton.setImage(UIImage(named: "Imac"), for: .normal)
//        imacButton.imageView?.contentMode = .scaleAspectFit
        textLabel.text = "OPÇÕES"
        textLabel.textColor = UIColor.yellow
        textLabel.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel.textAlignment = .center
        self.view.backgroundColor = UIColor.black
    }

    @IBAction func macbookProAction(_ sender: UIButton) {
    }
    
    @IBAction func imacAction(_ sender: UIButton) {
    }
    
}
