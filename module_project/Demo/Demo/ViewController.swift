//
//  ViewController.swift
//  Demo
//
//  Created by Almas Adilbek on 2/17/20.
//  Copyright © 2020 BTS Digital. All rights reserved.
//

import UIKit
import Issue48630Framework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func launchFlutter(_ sender: Any) {
        let controller = FlutterScreenViewController()
        controller.isModalInPresentation = true
        self.present(controller, animated: true, completion: nil)
    }

}

