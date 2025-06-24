//
//  AuthCoordinator.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class AuthCoordinator: Coordinator {
    var navigationController: UINavigationController
    var onLoginSuccess: (() -> Void)?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let loginVC = LoginViewController()
        loginVC.onLoginSuccess = { [weak self] in
            self?.onLoginSuccess?()
        }
        navigationController.setViewControllers([loginVC], animated: false)
    }
}
