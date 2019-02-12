//
//  ViewController.swift
//  CoordinatorPatternSwift
//
//  Created by mac on 12/13/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func signInPressed(_ sender: Any) {
        coordinator?.signIn()
    }


    @IBAction func signUnPressed(_ sender: Any) {
        coordinator?.signUp()
    }

}

