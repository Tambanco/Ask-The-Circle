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
    var gradientLayer: CAGradientLayer!
    {
        didSet
        {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            let startColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).cgColor
            gradientLayer.colors = [startColor, endColor]
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

