//
//  TrafficController.swift
//  TrafficLight
//
//  Created by Olga on 09.10.2024.
//

import UIKit

class TrafficController: UIViewController {
    
    //MARK: UI
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    var currentColor = Colors.red
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = redColor.frame.size.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.size.width / 2
    }
    
    //MARK: Actions
    @IBAction func turnButton(_ sender: Any) {
        if buttonStart.titleLabel?.text == "START"  {
            buttonStart.setTitle("Next", for: .normal)
        }

        switch currentColor {
        case .red:
            greenColor.alpha = 0.2
            yellowColor.alpha = 0.2
            redColor.alpha = 1
            currentColor = .yellow
        case .yellow:
            redColor.alpha = 0.2
            yellowColor.alpha = 1
            currentColor = .green
        case .green:
            yellowColor.alpha = 0.2
            greenColor.alpha = 1
            currentColor = .red
        }
    }
}

//MARK: Colors
extension TrafficController {
    enum Colors {
        case red
        case yellow
        case green
    }
}
