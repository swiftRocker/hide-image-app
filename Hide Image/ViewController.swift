//
//  ViewController.swift
//  Hide Image
//
//  Created by Michael Blocker on 2/21/16.
//  Copyright © 2016 Laura Norman Enterprises Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redBombImage: UIImageView!
    
    @IBOutlet weak var blueBombImage: UIImageView!
    
    @IBOutlet weak var redBombButtonText: UIButton!
    
    @IBOutlet weak var blueBombButtonText: UIButton!
    
    var redButton = true
    var blueButton = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func redBombButtonPressed(sender: AnyObject) {
        
     
        
        if redButton {
            redBombButtonText.setTitle("Click to reset", forState: UIControlState.Normal)
            redBombImage.image = UIImage(named: "kaboom.png")
            
            redButton = false
            
        } else {
            redBombImage.image = UIImage(named: "red bomb.png")
            redButton = true
            redBombButtonText.setTitle("Explode Red Bomb!", forState: UIControlState.Normal)
        
        }
    }
    
    
    @IBAction func blueBombButtonPressed(sender: AnyObject) {
        
        if blueButton {
            blueBombButtonText.setTitle("Click to reset", forState: UIControlState.Normal)
                
            blueBombImage.image = UIImage(named: "kaboom.png")
            blueButton = false
            
        } else {
            blueBombImage.image = UIImage(named: "blue bomb.png")
            blueButton = true
            blueBombButtonText.setTitle("Explode Blue Bomb!", forState: UIControlState.Normal)
            
        }
        
    }
    
    
}

