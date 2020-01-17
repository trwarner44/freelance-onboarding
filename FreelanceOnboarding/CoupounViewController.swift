//
//  CoupouViewController.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/16/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit
import TinyConstraints

class CouponViewController: UIViewController {

    var numberOfCoupons = 0
    
    let stackView = UIStackView()
    let numberOfCouponsLabelView = LabelView()
    let numberOfArrivalsLabelView = LabelView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        anchorSubviews()
        styleSubviews()

    }
    
    func anchorSubviews() {
        view.addSubview(stackView)
        stackView.centerInSuperview()
        stackView.widthToSuperview(multiplier: 0.8)
        stackView.heightToSuperview(multiplier: 0.3)
        
        stackView.addArrangedSubview(numberOfCouponsLabelView)
        stackView.addArrangedSubview(numberOfArrivalsLabelView)
    }
    
    func styleSubviews() {
        view.backgroundColor = .white
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        numberOfCouponsLabelView.descriptionLabel.text = "# Coupons"
        numberOfCouponsLabelView.countLabel.text = "3"
        
        numberOfArrivalsLabelView.descriptionLabel.text = "# Arrivals"
        numberOfArrivalsLabelView.countLabel.text = "5"
    }

}
