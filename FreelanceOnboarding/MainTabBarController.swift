//
//  MainTabBarController.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/16/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit
import TinyConstraints

class MainTabBarController: UITabBarController {

    let redVC = UIViewController()
    let blueVC = UIViewController()
    let greenVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        
        redVC.tabBarItem.title = "Red"
        redVC.view.backgroundColor = .red
        redVC.view.addSubview(purpleView)
        purpleView.centerInSuperview()
        purpleView.width(200)
        purpleView.height(200)
        
        blueVC.view.backgroundColor = .blue
        blueVC.tabBarItem.title = "Blue"
        greenVC.view.backgroundColor = .green
        greenVC.tabBarItem.title = "Green"
        viewControllers = [redVC, blueVC, greenVC]
        // Do any additional setup after loading the view.
    }

}
