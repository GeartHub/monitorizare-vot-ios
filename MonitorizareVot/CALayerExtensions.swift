//
//  CALayerExtensions.swift
//  MonitorizareVot
//
//  Created by Andrei Nastasiu on 11/17/16.
//  Copyright © 2016 Code4Ro. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    func dropDefaultShadow() {
        self.cornerRadius = 4
        self.borderWidth = 1
        self.borderColor = UIColor(colorLiteralRed:172.0/255.0, green:180.0/255.0, blue:190.0/255.0, alpha:1).cgColor
        self.masksToBounds = false
        self.shadowColor = UIColor.black.cgColor
        self.shadowRadius = 4.0
        self.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.shadowOpacity = 0.07
    }
    
    func defaultCornerRadius(borderColor: CGColor) {
        self.cornerRadius = 5
        self.borderColor = borderColor
        self.borderWidth = 1.0
    }
}
