//
//  HomeViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Maribel Montejano on 3/12/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var storyTextView: UITextView!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }

    @IBAction func beginStoryButton(_ sender: UIButton) {
        storyTextView.text = "You step outside of your apartment ready to go to school, and suddenly see a Centaur and a Unicorn walking on the other side of the street and round the corner. What do you do?"
        
        if nameTextField.text == "" || nameTextField.text == nil {
            firstChoiceButton.setTitle("Do you decide to chase and follow them around the corner?", for: UIControlState.normal)
            secondChoiceButton.setTitle("Do you decide to continue on your way to school?", for: UIControlState.normal)
        } else if let username = nameTextField.text {
            firstChoiceButton.setTitle("\(username), do you decide to chase and follow them around the corner?", for: UIControlState.normal)
            secondChoiceButton.setTitle("\(username), do you decide to continue on your way to school?", for: UIControlState.normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "followSegue" {
            print("This was selected!")
        } else if segue.identifier == "firstEndingSegue" {
            print("End of story!")
        }
    }
    
}
