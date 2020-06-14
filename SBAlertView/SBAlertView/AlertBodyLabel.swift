//
//  AlertBodyLabel.swift
//  SBAlertView
//
//  Created by Siddhesh Redkar on 2020-06-14.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation
import UIKit

class AlertBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }
    
    private func configure() {
        textColor                           = .darkGray // changes according to light or dark mode
        font                                = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontForContentSizeCategory   = true
        adjustsFontSizeToFitWidth           = true // how it scales to device/view
        minimumScaleFactor                  = 0.75 // does down to 75% of the size
        lineBreakMode                       = .byWordWrapping // keeps titles one line
        numberOfLines                       = 0
        translatesAutoresizingMaskIntoConstraints = false
    }

}
