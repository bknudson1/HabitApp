//
//  MainViewController.swift
//  habitApp
//
//  Created by Bénédicte Knudson on 1/28/24.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    
    var habits: [Habit] = [
            Habit(title: "Go to bed before 10pm"),
            Habit(title: "Drink 8 Glasses of Water"),
            Habit(title: "Commit Today"),
            Habit(title: "Stand up every Hour")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        // Do any additional setup after loading the view.
    
    }
    
    
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return habits.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell: UITableViewCell
            if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
                cell = dequeueCell
            } else {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }

            let habit = habits[indexPath.row]
            cell.textLabel?.text = habit.title

            return cell
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HabitsTableViewController {

    func setupNavBar() {
        title = "Habitual"
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressAddHabit(_:)))
        navigationItem.rightBarButtonItem = addButton
    }

    @objc func pressAddHabit(_ sender: UIBarButtonItem) {
        //habits.insert("Hello, World!", at: 0)
        let topIndexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [topIndexPath], with: .automatic)
    }
}