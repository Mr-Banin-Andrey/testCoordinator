//
//  AppCoordinator.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class AppCoordinator: Coordinator {
    var window: UIWindow
    var navigationController: UINavigationController
    var childCoordinator: Coordinator?

    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
    }

    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        showLogin()
    }

    func showLogin() {
        let authCoordinator = AuthCoordinator(navigationController: navigationController)
        authCoordinator.parentCoordinator = self
        childCoordinator = authCoordinator
        authCoordinator.start()
    }

    func showMainTabBar() {
        let mainTabCoordinator = MainTabBarCoordinator()
        childCoordinator = mainTabCoordinator
        window.rootViewController = mainTabCoordinator.tabBarController
        mainTabCoordinator.start()
    }
}
