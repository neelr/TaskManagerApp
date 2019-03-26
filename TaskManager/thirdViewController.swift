//
//  thirdViewController.swift
//  TaskManager
//
//  Created by Neel Redkar on 3/25/19.
//  Copyright © 2019 tecton. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet weak var labelthing: UILabel!
    var tasks = [""]
    var rownum = poopoo
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        tasks = UserDefaults.standard.stringArray(forKey: "tasks") ?? [String]()
        self.labelthing.text = tasks[rownum]
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
