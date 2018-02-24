//
//  MenuTableViewController.swift
//  SideMenuDemo
//
//  Created by 王科学 on 24/02/2018.
//  Copyright © 2018 wdxxl. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var destinationVC: UIViewController!
        if indexPath.row == 1 {
            destinationVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        } else {
            destinationVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        }
        sideMenuController()?.setContentViewController(destinationVC)
    }
}
