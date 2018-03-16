//
//  TrenchViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Maribel Montejano on 3/15/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class TrenchViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if name != nil {
            firstChoiceButton.setTitle("\(name!), do you decide to go through the corridor?", for: UIControlState.normal)
            secondChoiceButton.setTitle("\(name!), do you decide to make some noise, alerting the police officer nearby?", for: UIControlState.normal)
        } else {
            firstChoiceButton.setTitle("Do you decide to go through the corridor?", for: UIControlState.normal)
            secondChoiceButton.setTitle("Do you decide to make some noise, alerting the police officer nearby?", for: UIControlState.normal)
        }
    }

    @IBAction func startOverButton(_ sender: UIBarButtonItem) {
        if let navCon = self.navigationController {
            navCon.popToRootViewController(animated: true)
        }
    }
}
