//
//  FruitTableViewCell.swift
//  Desafio6TableView
//
//  Created by Felipe Miranda Santos on 09/10/23.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fruitNameLabel: UILabel!
    
    static let identifier: String = String(describing: FruitTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func setupCell(data: Fruit) {
        fruitNameLabel.text = data.fruit
        
    }
    
    func configElements() {
        fruitNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
}
