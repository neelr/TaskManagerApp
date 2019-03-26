//
//  FirstViewController.swift
//  TaskManager
//
//  Created by Neel Redkar on 3/20/19.
//  Copyright © 2019 tecton. All rights reserved.
//

import UIKit
var poopoo = 0
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TaskView: UITableView!
    var tasks = UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(tasks.count)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = tasks[indexPath.row]
        return(cell)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            tasks.remove(at: indexPath.row )
            UserDefaults.standard.set(tasks, forKey: "tasks")
            TaskView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        poopoo = indexPath.row
        performSegue(withIdentifier: "trigger", sender: self)
    }
    override func viewDidAppear(_ animated: Bool) {
        tasks = UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
        TaskView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            var tasks = try UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
        } catch {
            var tasks = [""]
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

