//
//  TabBarFinance.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 8/10/23.
//

import Foundation
import UIKit

class TabBarFinance: TabBarController {
    private func setupViewController() {
        
        viewControllers = [
            setupNavigationController(rootViewController: FinanceVC(), title: "Главная", image: UIImage(named : "pie_chart_75") ?? UIImage.add),
            setupNavigationController(rootViewController: FinanceVC(), title: "Oтчеты", image: UIImage(named: "Union 1") ?? UIImage.add),
            setupNavigationController(rootViewController: FinanceVC(), title: "Профиль", image: UIImage(systemName: "person.fill") ?? UIImage.add),
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
