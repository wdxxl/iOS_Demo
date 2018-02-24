//
//  SecondViewController.swift
//  SideMenuDemo
//
//  Created by 王科学 on 24/02/2018.
//  Copyright © 2018 wdxxl. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func menuButtonTapped(_ sender: UIBarButtonItem) {
        toggleSideMenuView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
