//
//  ViewController.swift
//  Ask The Circle
//
//  Created by tambanco 🥳 on 09.05.2021.
//

import UIKit

class ViewController: UIViewController
{
    // MARK: - Properties
    var palette = Palettes().bluePalette
    var gradientLayer: CAGradientLayer!
    {
        didSet
        {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            gradientLayer.colors = [palette[0], palette[1], palette[2], palette[3]]
//            gradientLayer.locations = [0.4, 0.6]
        }
    }

    // MARK: - Life cycle
    override func viewWillLayoutSubviews()
    {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
    }


}

