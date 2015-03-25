//
//  Task.swift
//  TaskMe
//
//  Created by Andreas Karlsson on 23 Mar.
//  Copyright (c) 2015 Andreas Karlsson. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}