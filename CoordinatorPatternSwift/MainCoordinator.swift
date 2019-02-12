//
//  MainCoordinator.swift
//  Mortchanged
//
//  Created by Invision-MacBookPro-shayan on 20/06/2018.
//  Copyright © 2018 Invision. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {

        let vc = StartViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    func signIn() {
        let vc = SignInViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func signUp() {
        let vc = SignUpViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

}
