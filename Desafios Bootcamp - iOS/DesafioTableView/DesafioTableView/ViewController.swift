//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Felipe Miranda Santos on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Car] = [Car(name: "BMW", model: "IMAGEM?????")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NamesTableViewCell.nib(), forCellReuseIdentifier: NamesTableViewCell.identifier)

    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NamesTableViewCell.identifier, for: indexPath) as? NamesTableViewCell
        cell?.setupCell(car: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
}
