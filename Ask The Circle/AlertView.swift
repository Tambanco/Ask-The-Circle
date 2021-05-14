//
//  AlertView.swift
//  Ask The Circle
//
//  Created by tambanco 🥳 on 14.05.2021.
//

import UIKit

protocol AlertDelagate
{
    func buttonTapped()
}

class AlertView: UIView
{
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var buttonTitle: AlertButton!
    
    var delegate: AlertDelagate?

    func set(answer: String, buttonText: String)
    {
        answerLabel.text = answer
        buttonTitle.setTitle(buttonText, for: .normal)
    }
    @IBAction func buttonTapped(_ sender: Any)
    {
        delegate?.buttonTapped()
    }
    
}
