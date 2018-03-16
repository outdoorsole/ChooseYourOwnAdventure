//
//  FollowViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Maribel Montejano on 3/15/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class FollowViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if name != nil {
            firstChoiceButton.setTitle("\(name!), do you decide to follow them inside?", for: UIControlState.normal)
            secondChoiceButton.setTitle("\(name!), do you decide to turn back, forget it all, and go on your way to school?", for: UIControlState.normal)
        } else {
            firstChoiceButton.setTitle("Do you decide to follow them inside?", for: UIControlState.normal)
            secondChoiceButton.setTitle("Do you decide to turn back, forget it all, and go on your way to school?", for: UIControlState.normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "warehouseSegue" {
            print("This was selected!")
            
            let nextViewController = segue.destination as? TrenchViewController
            
            if let nextVC = nextViewController {
                nextVC.name = name
            }
        }
    }

    @IBAction func startOverButton(_ sender: UIBarButtonItem) {
        if let navCon = self.navigationController {
            navCon.popToRootViewController(animated: true)
        }
    }
}
