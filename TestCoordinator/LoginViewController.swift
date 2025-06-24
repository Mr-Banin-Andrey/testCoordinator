//
//  LoginViewController.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class LoginViewController: UIViewController {
    weak var coordinator: AuthCoordinator?

    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let loginButton = UIButton(type: .system)
    private let registrationButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupUI()
    }

    private func setupUI() {
        usernameField.placeholder = "Username"
        passwordField.placeholder = "Password"
        passwordField.isSecureTextEntry = true
        loginButton.setTitle("Login", for: .normal)
        registrationButton.setTitle("Registration", for: .normal)

        let stack = UIStackView(arrangedSubviews: [usernameField, passwordField, loginButton, registrationButton])
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])

        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        registrationButton.addTarget(self, action: #selector(goToRegistration), for: .touchUpInside)
    }

    @objc private func handleLogin() {
        //можно добавить валидацию
        coordinator?.showMain()
    }
    
    @objc private func goToRegistration() {
        //TODO: проверить открытие экранов
        coordinator?.showRegistration()
    }
}

