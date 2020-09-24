//
//  Category.swift
//  Procrastinate
//
//  Created by Justin Galang on 9/23/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import Foundation
import UIKit

struct Category {
	var title: String
	var color: UIColor
	var todos: [String]
	
	init(title: String, color: UIColor) {
		self.title = title
		self.color = color
		self.todos = []
	}
}
