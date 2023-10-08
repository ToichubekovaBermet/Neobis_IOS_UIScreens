//
//  AppDelegate.swift
//  UISreens
//
//  Created by Bermet Toichubekova on 19/8/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        
           let navController = UINavigationController()
           let firstViewController = TabBarController()
           navController.viewControllers = [firstViewController]
        
         window = UIWindow(frame: UIScreen.main.bounds)
           window?.rootViewController = navController
           window?.makeKeyAndVisible()
           return true
    }
}
