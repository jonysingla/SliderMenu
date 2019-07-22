//
//  MyOrderViewController.swift
//  SliderMenuDemo
//
//  Created by Jony on 22/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit

class MyOrderViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate,UITableViewDataSource,UITableViewDelegate  {

    @IBOutlet weak var menu: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!
    var tableArray:Array = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        revealViewController().rearViewRevealWidth = 300
        menu.target = revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        tableView.register(UINib(nibName: "MyOrderTableViewCell", bundle: nil), forCellReuseIdentifier: "MyOrderCell")
        tableArray = ["A","B","C","D"]
    }
    

    //MARK: Table View DataSoucre
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyOrderCell", for: indexPath) as! MyOrderTableViewCell
        
        cell.name.text! = tableArray[indexPath.row]
        //        cell.imgIcon.image = iconArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mainstoryboard:UIStoryboard = UIStoryboard(name: "MyOrder", bundle: nil)
        let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "MyOrderDetailViewController") as! MyOrderDetailViewController
        self.navigationController?.pushViewController(newViewcontroller, animated: true)
    }

}
