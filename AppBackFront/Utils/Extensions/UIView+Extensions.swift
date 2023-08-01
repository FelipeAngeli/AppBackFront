//
//  UIView+Extensions.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 01/08/23.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadiuns: Double,typeCorners: CACornerMask){
        self.layer.cornerRadius = CGFloat(cornerRadiuns)
        self.clipsToBounds = true
        self.layer.maskedCorners = typeCorners
    }
    
}
