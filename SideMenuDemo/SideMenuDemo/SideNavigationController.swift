//
//  SideNavigationController.swift
//  SideMenuDemo
//
//  Created by 王科学 on 24/02/2018.
//  Copyright © 2018 wdxxl. All rights reserved.
//

import UIKit

class SideNavigationController: ENSideMenuNavigationController {
    override func viewDidLoad() {
        let menu = storyboard?.instantiateViewController(withIdentifier: "MenuTableViewController") as! MenuTableViewController
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: menu, menuPosition:ENSideMenuPosition.left)
        sideMenu?.menuWidth = 180
        view.bringSubview(toFront: navigationBar)
    }
}
