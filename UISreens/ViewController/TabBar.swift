//
//  TabBar.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    private func setupViewController() {
        
        viewControllers = [
            setupNavigationController(rootViewController: ViewController(), title: "Series", image: UIImage(named : "Outline") ?? UIImage.add),
            setupNavigationController(rootViewController: Travel(), title: "Headspace", image: UIImage(named: "Outline 1") ?? UIImage.add),
            setupNavigationController(rootViewController: ViewController(), title: "Profile", image: UIImage(systemName: "person.fill") ?? UIImage.add),
        ]
    }
    private func setupNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        return navigationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewController()
        view.tintColor = .black
    }
}
