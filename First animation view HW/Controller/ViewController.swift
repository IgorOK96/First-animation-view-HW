//
//  ViewController.swift
//  First animation view HW
//
//  Created by user246073 on 9/19/24.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet  var springAnimationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    @IBOutlet var propertyLabels: [UILabel]!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
 
    private func updateLabels() {
        propertyLabels[0].text = "preset: \(animation.name)"
        propertyLabels[1].text = "curve: \(animation.curve)"
        propertyLabels[2].text = String(format: "force: %.2f", animation.force)
        propertyLabels[3].text = String(format: "duration: %.2f", animation.duration)
        propertyLabels[4].text = String(format: "delay: %.2f", animation.delay)
    }
    
    private func updateButton() {
        runButton.setTitle("Run \(animation.name)", for: .normal)
    }
    
    @IBAction func runButton(_ sender: UIButton) {
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        updateLabels()
        animation = Animation.getRandomAnimation()
        updateButton()
    }
}


