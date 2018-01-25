//
//  TodoCollection.swift
//  ToDo-App
//
//  Created by Kate Gamo on 2018/01/21.
//  Copyright © 2018 Kate Gamo. All rights reserved.
//

import UIKit

class TodoCollection: NSObject {
    var todos:[Todo] = []
    
    func fetchTodos() {
        for i in 0..<7 {
        let todo = Todo()
        todo.title = "Todo\(i + 1)"
        self.todos.append(todo)
        }
    }
}

