//
//  Task.swift
//  ToDoFirebaseApp
//
//  Created by Felix Titov on 5/25/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation
import FirebaseDatabase

struct Task {
    let title: String
    let userId: String
    let ref: DatabaseReference?
    var completed = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String:AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userId": userId, "completed": completed]
    }
}
