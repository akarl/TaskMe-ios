//
//  AddTaskViewController.swift
//  TaskMe
//
//  Created by Andreas Karlsson on 23 Mar.
//  Copyright (c) 2015 Andreas Karlsson. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "dismissAndSave") {
            let task = Task(title: titleField.text, notes: notesField.text)
            TaskStore.sharedInstance.add(task)
        }
    }

}
