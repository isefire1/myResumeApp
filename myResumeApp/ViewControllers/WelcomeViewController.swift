//
//  WelcomeViewController.swift
//  myResumeApp
//
//  Created by Alex on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUserName: UILabel!
   
    @IBOutlet var logOut: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        logOut.layer.cornerRadius = 10
        
        welcomeUserName.text = "Welcome, \(user.name)!"
    }
    
}
