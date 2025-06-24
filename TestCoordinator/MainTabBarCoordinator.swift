//
//  MainTabBarCoordinator.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class MainTabBarCoordinator: Coordinator {
    var navigationController: UINavigationController = UINavigationController()
    let tabBarController = UITabBarController()

    func start() {
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

        let settingsVC = SettingsViewController()
        settingsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)

        tabBarController.viewControllers = [homeVC, settingsVC]
    }
}
