//
//  MapTappedViewController.swift
//  SliderMenuDemo
//
//  Created by Jony on 19/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit
class MapTappedViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        revealViewController().rearViewRevealWidth = 200
        menu.target = revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
