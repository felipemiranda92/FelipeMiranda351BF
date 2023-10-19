//
//  ViewController.swift
//  DesafioCollectionView
//
//  Created by Felipe Miranda Santos on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var list: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    
    var list2: [Car] = [Car(nameCar: "Ferrari", nameImage: "car1"),
                        Car(nameCar: "BMW", nameImage: "car2"),
                        Car(nameCar: "Audi", nameImage: "car3"),
                        Car(nameCar: "Toyota", nameImage: "car4"),
                        Car(nameCar: "Mercedes", nameImage: "car5"),
                        Car(nameCar: "Mustang", nameImage: "car6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
       
    }

    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CarsCollectionViewCell.nib(), forCellWithReuseIdentifier: CarsCollectionViewCell.identifier)
        
        
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsCollectionViewCell.identifier, for: indexPath) as? CarsCollectionViewCell
        cell?.setupCell(car: list2[indexPath.row])
        return cell ?? UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Quando queremos colocar as proporções iguais a do proprio device de largura utilizamos o -> collectionView.frame.width
        // Quando queremos colocar as proporções iguais a do proprio device de altura utilizamos o -> collectionView.frame.height
        // Quando queremos colocar proporções fixas ou varidas de acordo com o index podemos simplesmente passar o valor correspondente no height e no width
        
        // Proporções de acordo com o layout
              return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
        // Proporções fixas
//            return CGSize(width: 500, height: 250)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(list[indexPath.row])
    }
    
    
}
