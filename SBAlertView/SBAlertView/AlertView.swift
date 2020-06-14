//
//  AlertView.swift
//  SBAlertView
//
//  Created by Siddhesh Redkar on 2020-06-14.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation
import UIKit

class AlertView: UIView {
  
     var cornerRadius: CGFloat = 15

     var shadowOffsetWidth: Int = 0
     var shadowOffsetHeight: Int = 3
     var shadowColor: UIColor? = UIColor.black
     var shadowOpacity: Float = 0.5

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        if #available(iOS 13.0, *) {
            backgroundColor       = .systemBackground
        } else {
            backgroundColor = .white
            // Fallback on earlier versions
        }
        
         //changes according to light and dark mode
//        layer.cornerRadius    = 16
//        layer.borderWidth     = 2
//        layer.borderColor     = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        

    }
    
    
    override func layoutSubviews() {
        
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)

        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
        
    }
}



