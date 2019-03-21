//
//  SecondViewController.swift
//  TaskManager
//
//  Created by Neel Redkar on 3/20/19.
//  Copyright © 2019 tecton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var tasks = UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
    @IBOutlet weak var textinput: UITextField!
    @IBAction func AddTask(_ sender: Any) {
        if textinput.text == "" {
            
        } else {
            tasks = UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
            tasks.append(textinput.text ?? "")
            UserDefaults.standard.set(tasks, forKey: "tasks")
            textinput.text = ""
        }
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

