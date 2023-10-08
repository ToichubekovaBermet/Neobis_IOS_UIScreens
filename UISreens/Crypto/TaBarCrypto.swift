//
//  TaBarCrypto.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit
class TabBarCrypto: TabBarController {
    private func setupViewController() {
        
        viewControllers = [
            setupNavigationController(rootViewController: CryptoVc(), title: "Портфолио", image: UIImage(named : "dashboard-line") ?? UIImage.add),
            setupNavigationController(rootViewController: WeatherVc(), title: "", image: UIImage(named: "Икон1") ?? UIImage.add),
            setupNavigationController(rootViewController: CryptoVc(), title: "", image: UIImage(systemName: "person.fill") ?? UIImage.add),
        ]
    }
    private func setupNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        rootViewController.navigationItem.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewController()
        view.tintColor = .orange
    }
    
}
