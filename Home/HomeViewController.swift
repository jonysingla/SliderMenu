//
//  HomeViewController.swift
//  SliderMenuDemo
//
//  Created by Jony on 22/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
    
    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var tableArray:Array = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableCell")
            tableArray = ["A","B","C","D"]
            
        }
    }
    //MARK: Table View DataSoucre
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell", for: indexPath) as! HomeTableViewCell
        
        cell.name.text! = tableArray[indexPath.row]
//        cell.imgIcon.image = iconArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mainstoryboard:UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "AddOrderViewController") as! AddOrderViewController
        self.navigationController?.pushViewController(newViewcontroller, animated: true)
    }
}
