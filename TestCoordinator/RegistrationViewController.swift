//
//  RegistrationViewController.swift
//  TestCoordinator
//
//  Created by Андрей Банин on 24.06.2025.
//

import UIKit

class RegistrationViewController: UIViewController {
    weak var coordinator: AuthCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Registration"
    }
}
