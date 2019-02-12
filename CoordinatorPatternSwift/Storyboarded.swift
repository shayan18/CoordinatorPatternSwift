//
//  Storyboarded.swift
//  Mortchanged
//
//  Created by shayan on 20/06/2018.
//  Copyright © 2018 Shayan. All rights reserved.
//

import UIKit

protocol Storyboarded {
    
    static func instantiate() -> Self
}


extension Storyboarded where Self: UIViewController {

    static func instantiate() -> Self {
        
      // this pulls out "myVC.MyViewController"
        let fullName = NSStringFromClass(self)

      // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]

      // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

    // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
}




