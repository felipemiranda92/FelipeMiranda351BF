//
//  NameTableViewCell.swift
//  TableViewSimplesTurma251BF
//
//  Created by Felipe Miranda Santos on 21/09/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
 
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameLabel2.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lastName.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    
    func setupCell(person: Person) {
        nameLabel2.text =  person.name
        lastName.text = person.lastName
    }

    
}
