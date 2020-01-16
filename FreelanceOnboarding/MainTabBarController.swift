//
//  MainTabBarController.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/16/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    let redVC = UIViewController()
    let blueVC = UIViewController()
    let greenVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redVC.tabBarItem.title = "Red"
        redVC.view.backgroundColor = .red
        blueVC.view.backgroundColor = .blue
        blueVC.tabBarItem.title = "Blue"
        greenVC.view.backgroundColor = .green
        greenVC.tabBarItem.title = "Green"
        viewControllers = [redVC, blueVC, greenVC]
        // Do any additional setup after loading the view.
    }

}
