//
//  User.swift
//  ToDoFirebaseApp
//
//  Created by Felix Titov on 5/25/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation
import FirebaseAuth

struct User {
    let uid: String
    let email: String
    
    init(user: FirebaseAuth.User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
