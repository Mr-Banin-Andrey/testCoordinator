//
//  AuthCoordinator.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class AuthCoordinator: Coordinator {
    weak var parentCoordinator: AppCoordinator?
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let loginVC = LoginViewController()
        loginVC.coordinator = self
        navigationController.setViewControllers([loginVC], animated: false)
    }
    
    func showMain() {
        parentCoordinator?.showMainTabBar()
    }

    func showRegistration() {
        let registrationVC = RegistrationViewController()
        registrationVC.coordinator = self
        navigationController.pushViewController(registrationVC, animated: true)
    }
}
