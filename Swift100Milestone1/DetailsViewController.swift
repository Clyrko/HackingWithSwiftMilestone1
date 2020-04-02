//
//  DetailsViewController.swift
//  Swift100Milestone1
//
//  Created by Jay A. on 4/2/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    var selectedCountry: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedCountry
        
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
