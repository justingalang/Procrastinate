//
//  HomeViewController.swift
//  Procrastinate
//
//  Created by Justin Galang on 9/23/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
	var allTodos = [Todo]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TodoTableViewCell", bundle: nil), forCellReuseIdentifier: TodoTableViewCell.identifier)
        readSavedTodos()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func saveAllTodos(){
        //dictionary for cards
        let dictionaryArray = allTodos.map { (todo) -> [String: String] in
            return ["color": todo.categoryColor, "task": todo.task, "dueDate": todo.dueDate]
        }
        UserDefaults.standard.set(dictionaryArray, forKey: Constants.UserDefaultKeys.allTodos)
        
        print("Todos saved")
    }
    
    func readSavedTodos(){
        let testTodo = Todo(categoryColor: "Green", task: "Jump off a cliff", dueDate: "09/28")
        for _ in 0...10 {
            allTodos.append(testTodo)
        }
//        if let dictionaryArray = UserDefaults.standard.array(forKey: Constants.UserDefaultKeys.allTodos) as? [[String: String]]{
//            let savedCards = dictionaryArray.map { dictionary -> Todo in
//                return Todo(categoryColor: dictionary["color"]!, task: dictionary["task"]!, dueDate: dictionary["dueDate"]!)
//            }
//            allTodos.append(contentsOf: savedCards)
//        }
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTodos.count
    }
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoTableViewCell.identifier, for: indexPath) as! TodoTableViewCell
        cell.configure(with: allTodos[indexPath.row])
        return cell
    }
	

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
