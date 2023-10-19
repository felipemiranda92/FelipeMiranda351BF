//
//  ViewController.swift
//  Desafio6TableView
//
//  Created by Felipe Miranda Santos on 09/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var list: [Fruit] = [Fruit(fruit: "Banana"),Fruit(fruit: "Maça"), Fruit(fruit: "Morango"), Fruit(fruit: "Melão"),
                         Fruit(fruit: "Cupuaçu")]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FruitTableViewCell.nib(), forCellReuseIdentifier: FruitTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitTableViewCell.identifier, for: indexPath) as? FruitTableViewCell
        cell?.setupCell(data: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
}
