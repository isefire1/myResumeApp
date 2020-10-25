//
//  AboutMeViewController.swift
//  myResumeApp
//
//  Created by Alex on 24.10.2020.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!

 
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
    }
}
