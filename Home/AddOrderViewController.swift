//
//  AddOrderViewController.swift
//  SliderMenuDemo
//
//  Created by Jony on 22/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit

class AddOrderViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var tableArray:Array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: "AddOrderTableViewCell", bundle: nil), forCellReuseIdentifier: "AddOrderCell")
        tableArray = ["A","B","C","D"]
    }
    

    //MARK: Table View DataSoucre
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddOrderCell", for: indexPath) as! AddOrderTableViewCell
        
        cell.name.text! = tableArray[indexPath.row]
        //        cell.imgIcon.image = iconArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mainstoryboard:UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
        self.navigationController?.pushViewController(newViewcontroller, animated: true)
    }

}
