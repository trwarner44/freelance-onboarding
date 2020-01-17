//
//  LabelView.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/17/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit

class LabelView: UIView {
    
    let descriptionLabel = UILabel()
    let countLabel = UILabel()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        anchorSubviews()
        styleSubviews()
    }
    
    func anchorSubviews() {
        
        addSubview(descriptionLabel)
        descriptionLabel.edgesToSuperview(excluding: .bottom)
        descriptionLabel.heightToSuperview(multiplier: 0.2)
                
        addSubview(countLabel)
        countLabel.edgesToSuperview(excluding: .top)
        countLabel.topToBottom(of: descriptionLabel)
        
    }
    
    
    func styleSubviews() {
        
        descriptionLabel.textColor = customRed
        descriptionLabel.minimumScaleFactor = 0.1
        descriptionLabel.adjustsFontSizeToFitWidth = true
        descriptionLabel.lineBreakMode = .byClipping
        descriptionLabel.numberOfLines = 0
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 50)
        descriptionLabel.textAlignment = .center
        
        countLabel.textColor = customRed
        countLabel.minimumScaleFactor = 0.1
        countLabel.adjustsFontSizeToFitWidth = true
        countLabel.lineBreakMode = .byClipping
        countLabel.numberOfLines = 0
        countLabel.font = UIFont.boldSystemFont(ofSize: 100)
        countLabel.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
