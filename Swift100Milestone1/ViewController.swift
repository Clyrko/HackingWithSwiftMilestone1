//
//  ViewController.swift
//  Swift100Milestone1
//
//  Created by Jay A. on 4/1/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // List of available countries
        countries += ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
        
        // Navbar title
        title = "SELECT A COUNTRY"
        
        // Making the title big & dynamic
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Loading images from disk
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let flags = try! fm.contentsOfDirectory(atPath: path)
        
        for flag in flags {
            
            if flag.hasSuffix("png") {
            
            countries.append(flag)
            
            }
        }
    
        print(countries)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        // Set number of rows
        countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailsViewController {
            
            vc.selectedCountry = countries[indexPath.row]
            navigationController?.popToViewController(vc, animated: true)
            
        }
        
    }

}

