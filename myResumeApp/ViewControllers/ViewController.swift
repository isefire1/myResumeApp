//
//  ViewController.swift
//  myResumeApp
//
//  Created by Alex on 24.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    private let user = User.userPressed()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationControllerVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutUserVC = navigationControllerVC.topViewController as! AboutMeViewController
    
        welcomeVC.user = user
        aboutUserVC.user = user
    }
    
    
    
    @IBAction func logInPresed() {
        guard userName.text == user.name,
              password.text == user.password
        else {showAlert(with: "Invalid login or password",
                        and: "Please, enter correct login and password",
                        textField: password)
            return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    
    
    
    @IBAction func showUserName() {
        showAlert(with: "Oops!", and: "Your name is \(user.name)😎")
    }
    
    @IBAction func showPassword() {
        showAlert(with: "Oops", and: "Your password is \(user.password)🔧")
    }
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
