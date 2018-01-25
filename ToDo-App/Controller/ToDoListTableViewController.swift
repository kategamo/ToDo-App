//
//  ToDoListTableViewController.swift
//  ToDo-App
//
//  Created by Kate Gamo on 2018/01/21.
//  Copyright © 2018 Kate Gamo. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    let todoCollection = TodoCollection()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController!.navigationBar.tintColor = UIColor.black
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "New", style: UIBarButtonItemStyle.plain, target: self, action:  #selector(ToDoListTableViewController.newTodo))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoCollection.fetchTodos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.todoCollection.todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let todo = self.todoCollection.todos[indexPath.row]
        cell.textLabel!.text = todo.title
        cell.textLabel!.font = UIFont(name: "HirakakuProN-W3", size: 15)
        return cell
    }
    
    @objc func newTodo() {
        self.performSegue(withIdentifier: "PresentNewTodoViewControler", sender: self)
    }

}

