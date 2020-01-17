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
    let imageView = UIImageView()
    
    var offset: CGFloat!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //        anchorSubviews()
        styleSubviews()
    }
    
    func anchorSubviews() {
        
        addSubview(descriptionLabel)
        descriptionLabel.edgesToSuperview(excluding: .top)
        descriptionLabel.heightToSuperview(multiplier: 0.2)
        
        addSubview(imageView)
        imageView.edgesToSuperview(excluding: .bottom)
        imageView.bottomToTop(of: descriptionLabel, offset: -20)
        
        imageView.addSubview(countLabel)
        //        countLabel.centerInSuperview()
        countLabel.centerXToSuperview()
        countLabel.centerYToSuperview(offset: offset)
        
    }
    
    
    func styleSubviews() {
        imageView.contentMode = .scaleAspectFit
        
        descriptionLabel.textColor = .white
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
