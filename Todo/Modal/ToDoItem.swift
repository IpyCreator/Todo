//
//  ToDoItem.swift
//  Todo
//
//  Created by Saurabh zorang on 9/9/19
//  Copyright © 2019 Saurabh. All rights reserved.
//

import Foundation

struct ToDoItem {
     let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String,
         itemDescription: String? = nil,
         timestamp: Double? = nil,
         location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
    
}

