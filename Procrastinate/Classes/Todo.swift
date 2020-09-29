//
//  Todo.swift
//  Procrastinate
//
//  Created by Justin Galang on 9/23/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import Foundation

struct Todo {
	var category : Category
	var task : String
	var dueDate : String
	
	init(category: Category, task: String, dueDate: String) {
		self.category = category
		self.task = task
		self.dueDate = dueDate
	}
}
