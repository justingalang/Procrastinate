//
//  Todo.swift
//  Procrastinate
//
//  Created by Justin Galang on 9/23/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import Foundation

struct Todo {
	var categoryColor : String
	var task : String
	var dueDate : String
	
	init(categoryColor: String, task: String, dueDate: String) {
		self.categoryColor = categoryColor
		self.task = task
		self.dueDate = dueDate
	}
}
