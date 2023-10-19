//
//  TabBarController.swift
//  Desafio07Turma351BF
//
//  Created by Felipe Miranda Santos on 15/10/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addControllers()
        configLayout()
    }
    
    func addControllers() {
        
        let firstVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela01ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela01ViewController") as? Tela01ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 01", image: UIImage(systemName: "pencil.circle.fill"), tag: 0)
            return nav
        }()
        
        let secondVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 02", image: UIImage(systemName: "rectangle.portrait.and.arrow.right.fill"), tag: 1)
            return nav
        }()
        
        
        viewControllers = [firstVC, secondVC]
    }
    
    func configLayout() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    


}
