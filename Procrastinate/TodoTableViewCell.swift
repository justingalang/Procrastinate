//
//  TodoTableViewCell.swift
//  Procrastinate
//
//  Created by Justin Galang on 9/23/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

	static let identifier = "TodoTableViewCell"
	
	@IBOutlet weak var categoryIdentifier: UIView!
	@IBOutlet weak var todoLabel: UILabel!
	@IBOutlet weak var date: UILabel!
	
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
	public func configure(with todo: Todo) {
		categoryIdentifier.backgroundColor = todo.category.color
		todoLabel.text = todo.task
		date.text = todo.dueDate
	}
}
