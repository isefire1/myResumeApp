//
//  Figure.swift
//  myResumeApp
//
//  Created by Alex on 24.10.2020.
//

import Foundation

struct User {
    let name: String
    let password: String
    
    static func userPressed() -> User {
        User.init(name: "Alehandro", password: "easy")
    }
}

