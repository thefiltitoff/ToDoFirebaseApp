//
//  TasksViewController.swift
//  ToDoFirebaseApp
//
//  Created by Felix Titov on 5/24/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class TasksViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    @IBAction func addTaskTapped(_ sender: UIBarButtonItem) {
    }
    
}

extension TasksViewController: UITableViewDelegate {
    
}

extension TasksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .clear
        cell.textLabel?.text = "This is cell number \(indexPath.row)"
        cell.textLabel?.textColor = .white
        
        return cell
    }
    
    
    
}
