//
//  ViewController.swift
//  shake_me_silly
//
//  Created by Ievgeniia Pavliuchyk on 17/02/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var timer = Timer()
    
    var timeInt = 10
    var scoreInt = 0
    
    var imageInt = 1
    var modeInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startGame(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startCounter), userInfo: nil, repeats: true )
    
    }
    
    @objc func startCounter() {
        
        timeInt -= 1
        timeLabel.text = String(timeInt)
        
        
    }
    
}

