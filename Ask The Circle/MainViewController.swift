//
//  ViewController.swift
//  Ask The Circle
//
//  Created by tambanco 🥳 on 09.05.2021.
//

import UIKit

class MainViewController: UIViewController
{
    // MARK: - Properties
    var palette = Palettes().bluePalette
    let answers = Answers().answersArray
    let buttonTitle = "Ask me!"
    let buttonTitleFont = UIFont.boldSystemFont(ofSize: 20)
    var buttonSize: [CGFloat] = []
    
    var gradientLayer: CAGradientLayer!
    {
        didSet
        { 
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            gradientLayer.colors = [palette[0], palette[1], palette[2], palette[3]]
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var askButton: UIButton!
    {
        didSet
        {
            askButton.backgroundColor = .clear
            askButton.layer.borderWidth = 1
            askButton.layer.borderColor = palette[0]
            
            askButton.setTitle(buttonTitle, for: .normal)
            askButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            askButton.titleLabel?.font = buttonTitleFont
            askButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            askButton.layer.shadowOpacity = 0.5
            askButton.layer.shadowRadius = 30
        }
    }
    
    // MARK: - Life cycle
    override func viewDidLayoutSubviews()
    {
        gradientLayer.frame = CGRect(x: 0,
                                     y: 0,
                                     width: self.view.bounds.size.width,
                                     height: self.view.bounds.size.height)
        
        buttonSize = [200, 200]
        askButton.frame = CGRect(x: self.view.bounds.size.width / 2 - 100,
                                 y: self.view.bounds.size.height / 2,
                                 width: buttonSize[0],
                                 height: buttonSize[1])
        askButton.layer.cornerRadius = askButton.frame.size.height / 2
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setAlert()
    {
        
    }
    
    // MARK: - Button actions
    @IBAction func askButtonPressed(_ sender: UIButton)
    {
        configButtonAnimation(sender)
        setAnAnswer(answers)
        
    }
    
    func setAnAnswer(_ answers: [String])
    {
        print(answers.randomElement() ?? "No")
    }
    
    func configButtonAnimation(_ sender: UIButton)
    {
        let pulse = PulseAnimation(numberOfPulse: Float.infinity, radius: 100, postion: sender.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = palette[2]
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
        let pulse1 = PulseAnimation(numberOfPulse: 15, radius: 200, postion: sender.center)
        pulse1.animationDuration = 1.4
        pulse1.backgroundColor = palette[1]
        self.view.layer.insertSublayer(pulse1, below: self.view.layer)
    }
}

