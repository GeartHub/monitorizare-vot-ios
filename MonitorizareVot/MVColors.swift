//  Created by Code4Romania

import Foundation
import UIKit

enum MVColors {
    case yellow
    case gray
    case green
    case lightGray
    case black
    case white
    case clear
    
    var color: UIColor {
        get {
            switch self {
            case .yellow:
                return UIColor(red: 1, green: 205/255.0, blue: 0, alpha: 1)
            case .gray:
                return UIColor(red: 172/255.0, green: 180/255.0, blue: 190/255.0, alpha: 1)
            case .green:
                return UIColor(red: 29/255.0, green: 191/255.0, blue: 48/255.0, alpha: 1)
            case .lightGray:
                return UIColor.lightGray
            case .black:
                return UIColor.black
            case .white:
                return UIColor.white
            case .clear:
                return UIColor.clear
            }
        }
    }
    
    var cgColor: CGColor {
        return self.color.cgColor
    }
}


extension UIColor {
    
    static let navigationBarBackground = UIColor(hexCode: 0xFFCC00)
    static let navigationBarTint = UIColor(hexCode: 0x333E48)
    
    // Important: We need to make these checks until we have the minimum deployment set to iOS 11

    static var appBackground = UIColor(hexCode: 0xFAFAFA)
    static var headerBackground = UIColor(hexCode: 0xFFFFFF)
    static var defaultText = UIColor(hexCode: 0x333E48)
    static var chooserButtonBorder = UIColor(hexCode: 0x333E48).withAlphaComponent(0.3)
    static var chooserButtonBackground = UIColor.clear
    static var chooserButtonSelectedBackground = navigationBarBackground
    static var actionButtonForeground = UIColor(hexCode: 0x81175C)
    static var actionButtonBackground = actionButtonForeground.withAlphaComponent(0.065)
    
    convenience init(hexCode: UInt32) {
        var alpha = hexCode >> 24 & 0xFF
        let red   = hexCode >> 16 & 0xFF
        let green = hexCode >> 8 & 0xFF
        let blue  = hexCode >> 0 & 0xFF
        if alpha == 0 {
            alpha = 0xFF
        }
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha:CGFloat(alpha) / 255.0)
    }
    
}
