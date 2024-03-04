//
//  ViewController.swift

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrayTodo : [String] = []

    @IBOutlet weak var tableToDo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

        tableToDo.delegate = self
        tableToDo.dataSource = self
    }
    
    @IBAction func addClick(_ sender: Any) {
        let alert = UIAlertController(title: "Add Task", message: "Enter your task name", preferredStyle: .alert)// Jay - create alert for add task

        alert.addTextField { (textField) in
            textField.placeholder = "Task name"
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))// Jay - adding cancel button

        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert] (_) in
            let textField = alert!.textFields![0]
            if(!(textField.text ?? "").isEmpty){
                self.arrayTodo.append(textField.text!)
                self.tableToDo.reloadData() // Jay - Refresh table data basedd on array
            }
        }))
        self.present(alert, animated: true, completion: nil)
    }


    //Table Function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTodo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableToDo.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as! ToDoCell
        
        cell.lableTaskName?.text = arrayTodo[indexPath.row]
        
        cell.buttonDelete.tag = indexPath.row // Jay - To store index in button - for deleting later on based on index
        cell.buttonDelete.addTarget(self, action: #selector(deleteTask(sender:)), for: .touchUpInside)

        return cell
    }
    
    @objc func deleteTask(sender: UIButton){
        let buttonTag = sender.tag
        arrayTodo.remove(at: buttonTag)
        tableToDo.reloadData()
    }
    

}

