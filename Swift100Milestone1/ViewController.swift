//
//  ViewController.swift
//  Swift100Milestone1
//
//  Created by Jay A. on 4/1/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countires = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // List of available countries
        countires += ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    }


}

