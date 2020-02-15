//
//  BaseTabBarController.swift
//  AppStoreClone
//
//  Created by YouSS on 2/13/20.
//  Copyright © 2020 YouSS. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            createViewController(viewController: UIViewController(), title: "Today", image: "today_icon"),
            createViewController(viewController: UIViewController(), title: "Apps", image: "apps"),
            createViewController(viewController: AppsSearchController(), title: "Search", image: "search")
        ]
    }

    func createViewController(viewController: UIViewController, title: String, image: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: image)
        
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        
        return navController
    }
    
}
