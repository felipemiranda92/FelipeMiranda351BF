//
//  CarsCollectionViewCell.swift
//  DesafioCollectionView
//
//  Created by Felipe Miranda Santos on 26/09/23.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    
    static let identifier: String = "CarsCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func setupCell(car: Car) {
        carImageView.image = UIImage(named: car.nameImage)
        carNameLabel.text = car.nameCar
    }
    
    func configElements() {
        carImageView.contentMode = .scaleToFill
    }

}
