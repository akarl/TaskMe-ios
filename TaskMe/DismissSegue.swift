//
//  DismissSegue.swift
//  TaskMe
//
//  Created by Andreas Karlsson on 23 Mar.
//  Copyright (c) 2015 Andreas Karlsson. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    
    override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
   
}
