//
//  Tab1ViewController.swift
//  Final Project
//
//  Created by Jakob Sabatula on 5/2/20.
//  Copyright © 2020 Jakob Sabatula. All rights reserved.
//

import UIKit

class Tab1ViewController: UITabBarController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    @IBAction func tapCheese(_ sender: Any) {
        outputLabel.text = "You picked Cheese Pizza!"
    }
    
    @IBAction func pinchPepperoni(_ sender: Any) {
        outputLabel.text = "You picked Pepperoni Pizza!"
    }
    
    @IBAction func rotateMushroom(_ sender: Any) {
        var recognizer: UIRotationGestureRecognizer
        var feedback: String
        var rotation: CGFloat
                
        recognizer=sender as! UIRotationGestureRecognizer
        rotation=recognizer.rotation
        imageView.transform = CGAffineTransform(rotationAngle: 0.0)
        outputLabel.text = "You picked Mushroom Pizza!"
        feedback=String(format: "Rotated, Redians: %1.2f, Velocity: %1.2f",
            Float(recognizer.rotation),Float(recognizer.velocity))
        imageView.transform = CGAffineTransform(rotationAngle: rotation)
        
        
    }
    
    @IBAction func swipeSupreme(_ sender: Any) {
        outputLabel.text = "You picked Supreme Pizza!"
    }
    
    @IBAction func longpressGarlic(_ sender: Any) {
        outputLabel.text = "You picked 4 Cheese Garlic Pizza!"
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


}

}
