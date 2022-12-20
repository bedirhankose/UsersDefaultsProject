//
//  ViewController.swift
//  UsersDefaultsProject
//
//  Created by Bedirhan Köse on 20.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NoteTextField: UITextField!
    @IBOutlet weak var TimeTextField: UITextField!
    
    @IBOutlet weak var NoteLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SaveButton(_ sender: Any) {
        NoteLabel.text = "Work to do: \(NoteTextField.text!)"
        TimeLabel.text = "When to do: \(TimeTextField.text!)"
    }
    @IBAction func DeleteButton(_ sender: Any) {
    }
    
}

