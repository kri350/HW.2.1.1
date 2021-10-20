//
//  ViewController.swift
//  HW.2.1.1
//
//  Created by Кристина Андреева on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 55
        yellowView.layer.cornerRadius = 55
        greenView.layer.cornerRadius = 55
        redView.alpha = 0.1
        yellowView.alpha = 0.1
        greenView.alpha = 0.1
    }
    
    @IBAction func switchButtonPressed() {
        switchButton.setTitle("Next", for: .normal)
        if redView.alpha == 1 {
            redView.alpha = 0.1
            yellowView.alpha = 1
            greenView.alpha = 0.1
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.1
            redView.alpha = 0.1
        } else if greenView.alpha == 1 {
            yellowView.alpha = 0.1
            redView.alpha = 1
            greenView.alpha = 0.1
        } else {
            redView.alpha = 1
        }
    }
}
