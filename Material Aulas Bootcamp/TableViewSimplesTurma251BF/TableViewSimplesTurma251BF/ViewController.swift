//
//  ViewController.swift
//  TableViewSimplesTurma251BF
//
//  Created by Felipe Miranda Santos on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Person] = [Person(name: "Caio", lastName: "Fabrini"),
                          Person(name: "Felipe", lastName: "Miranda"),
                          Person(name: "Eduardo", lastName: "Munho")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    // Número de linhas por sessão
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // Método responsavel por popular (dar vida) a celula(parte de visualização)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: list[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
    
}



