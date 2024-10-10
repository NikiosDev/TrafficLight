//
//  ViewController.swift
//  TrafficLight
//
//  Created by Olga on 09.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = redColor.frame.size.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.size.width / 2
        
    }


}

