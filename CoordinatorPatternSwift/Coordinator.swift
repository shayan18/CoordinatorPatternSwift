//
//  Coordinator.swift
//  Mortchanged
//
//  Created by Invision-MacBookPro-shayan on 20/06/2018.
//  Copyright © 2018 Invision. All rights reserved.
//

import UIKit


protocol Coordinator {
    
    
    var childCoordinators: [Coordinator] { get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
