//
//  ViewController.swift
//  HW9Tester
//
//  Created by Minh Ly on 12/5/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {
    
    var oscillator = AKOscillator()

    override func viewDidLoad() {
        super.viewDidLoad()
        AudioKit.output = oscillator
        try! AudioKit.start()
        oscillator.start()
        oscillator.frequency = random(in: 220...880)
    }

    
    @IBAction func toggleSound(_ sender: UIButton!) {
        if oscillator.isPlaying{
            oscillator.stop()
        }
        else {
            oscillator.start()
            oscillator.frequency = random(in: 220...880)
        }
    }
}

