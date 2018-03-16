//
//  EndingViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Maribel Montejano on 3/16/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class EndingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func startOverButton(_ sender: UIBarButtonItem) {
        if let navCon = self.navigationController {
            navCon.popToRootViewController(animated: true)
        }
    }
}
