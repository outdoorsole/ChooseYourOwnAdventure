//
//  EnterBuildingViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Maribel Montejano on 3/15/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class EnterBuildingViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if name != nil {
            firstChoiceButton.setTitle("\(name!), do you tell him that you are here for the birthday party?", for: UIControlState.normal)
            secondChoiceButton.setTitle("\(name!), do you fight him off and run back to school?", for: UIControlState.normal)
        } else {
            firstChoiceButton.setTitle("Do you tell him that you are here for the birthday party?", for: UIControlState.normal)
            secondChoiceButton.setTitle("Do you fight him off and run back to school?", for: UIControlState.normal)
        }
    }
    
    @IBAction func startOverButton(_ sender: UIBarButtonItem) {
        if let navCon = self.navigationController {
            navCon.popToRootViewController(animated: true)
        }
    }
    
}
