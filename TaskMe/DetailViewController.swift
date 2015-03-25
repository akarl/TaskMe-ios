//
//  DetailViewController.swift
//  TaskMe
//
//  Created by Andreas Karlsson on 23 Mar.
//  Copyright (c) 2015 Andreas Karlsson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!


    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = detailItem {
            if let label = titleLabel {
                label.text = detail.title
            }
            if let label = notesLabel {
                label.text = detail.notes
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}