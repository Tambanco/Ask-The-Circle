//
//  Nib.swift
//  Ask The Circle
//
//  Created by tambanco 🥳 on 14.05.2021.
//

import Foundation
import UIKit

extension UIView
{
    class func loadFromNib<T: UIView>() -> T
    {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

