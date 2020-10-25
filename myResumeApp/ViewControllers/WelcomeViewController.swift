//
//  WelcomeViewController.swift
//  myResumeApp
//
//  Created by Alex on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUserName: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserName.text = "Welcome, \(user.name)!"
    }
}
