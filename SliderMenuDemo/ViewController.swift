//
//  ViewController.swift
//  SliderMenuDemo
//
//  Created by Jony on 19/07/19.
//  Copyright © 2019 Jony. All rights reserved.
// https://www.youtube.com/watch?v=K1qrk6XOuIU

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            //            revealViewController().rightViewRevealWidth = 150
            //            extraButton.target = revealViewController()
            //            extraButton.action = "rightRevealToggle:"
            
            
            
            
        }
    }


}

