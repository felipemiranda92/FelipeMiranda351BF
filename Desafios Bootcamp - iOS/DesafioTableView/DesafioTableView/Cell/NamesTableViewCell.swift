//
//  NamesTableViewCell.swift
//  DesafioTableView
//
//  Created by Felipe Miranda Santos on 21/09/23.
//

import UIKit

class NamesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NamesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    
    func setupCell(car: Car) {
        nameLabel.text = car.name
        carImageView.image = car.model
    }

    
}
