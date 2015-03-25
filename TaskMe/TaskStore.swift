//
//  TaskStore.swift
//  TaskMe
//
//  Created by Andreas Karlsson on 23 Mar.
//  Copyright (c) 2015 Andreas Karlsson. All rights reserved.
//

import Foundation

class TaskStore {
    
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex: Int) {
        tasks[atIndex] = task
    }
    
    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
}